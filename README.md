## Synopsis

This repository demonstrates the use of the [Zoo](https://github.com/clef-men/zoo) framework.

## Building

First, you need to install [`opam`](https://opam.ocaml.org/) (>= 2.0).

To make sure it is up-to-date, run:

```
opam update --all --repositories
```

Then, you need to install [this custom version of the OCaml compiler](https://github.com/clef-men/ocaml/tree/atomic_fields_11) featuring atomic record fields.
Hopefully, the corresponding PR should be merged one day.

The following commands take care of this:

```
opam switch create . --empty --repos default,coq-released=https://coq.inria.fr/opam/released,iris-dev=git+https://gitlab.mpi-sws.org/iris/opam.git --yes
eval $(opam env --switch=. --set-switch)
opam pin add ocaml-variants git+https://github.com/clef-men/ocaml#atomic_fields_11 --yes
```

Then, install dependencies including [`ocaml2zoo`](https://github.com/clef-men/ocaml2zoo) with:

```
opam pin add ocaml2zoo git+https://github.com/clef-men/ocaml2zoo#main --yes
opam install . --deps-only --yes
```

To compile OCaml libraries (see `lib/`), run:

```
make lib
```

To translate OCaml libraries into [Zoo](https://github.com/clef-men/zoo) (Coq files are generated in `theories/`), run:

```
make ocaml2zoo
```

Finally, to compile Coq proofs, run:

```
make
```
