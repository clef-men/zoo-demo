#! /usr/bin/env bash

set -eou pipefail

git clone https://github.com/clef-men/zoo

opam switch create . --empty --repos default,coq-released=https://coq.inria.fr/opam/released,iris-dev=git+https://gitlab.mpi-sws.org/iris/opam.git
eval $(opam env --switch=. --set-switch)
opam pin add ocaml-variants git+https://github.com/clef-men/ocaml#atomic_fields_11 --yes

make depend

cd zoo
make depend
make -j build-zoo
make install-zoo
make -j build-zoo-std
make install-zoo-std
