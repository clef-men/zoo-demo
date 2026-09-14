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
(license ISC)

(package
  (name zoo-demo)
  (synopsis "Zoo demo")
  (depends
    zoo
    zoo-std
  )
)

(package
  (name rocq-zoo-demo)
  (synopsis "Zoo demo")
  (allow_empty)
)
