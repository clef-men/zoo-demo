## Synopsis

This repository demonstrates the use of the [Zoo](https://github.com/clef-men/zoo) framework.

## Building

First, you need to install [`opam`](https://opam.ocaml.org/) (>= 2.0).

To make sure it is up-to-date, run:

```
opam update --all --repositories
```

Then, you need to install [this custom version of the OCaml compiler](https://github.com/clef-men/ocaml/tree/generative_constructors) featuring generative constructors.
Hopefully, it should be merged into the OCaml compiler one day.

The following commands take care of this:

```
opam switch create . --empty --repos default,rocq-released=https://rocq-prover.github.io/opam/released,iris-dev=git+https://gitlab.mpi-sws.org/iris/opam.git --yes
eval $(opam env --switch=. --set-switch)
opam pin add ocaml-variants git+https://github.com/clef-men/ocaml#generative_constructors --yes
```

Then, install dependencies including [`ocaml2zoo`](https://github.com/clef-men/ocaml2zoo) with:

```
opam pin add ocaml2zoo git+https://github.com/clef-men/ocaml2zoo#main --no-action --yes
opam install ocaml2zoo . --deps-only --yes
opam install ocaml2zoo
```

To compile OCaml libraries (see [`lib/`](lib/)), run:

```
make lib
```

To translate OCaml libraries into [Zoo](https://github.com/clef-men/zoo) (Rocq files are generated in [`theories/`](theories/)), run:

```
make ocaml2zoo
```

Finally, to compile Rocq proofs, run:

```
make
```
