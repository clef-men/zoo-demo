(lang dune 3.0)

(name zoo-demo)

(generate_opam_files)

(authors
  "Clément Allain"
)
(maintainers
  "clement.allain@inria.fr"
)

(source (github clef-men/zoo-demo))

(package
  (name zoo_demo)
  (synopsis "Zoo demo")
  (depends
    zoo
    zoo_std
  )
)

(package
  (name coq-zoo-demo)
  (synopsis "Zoo demo")
  (allow_empty)
)
