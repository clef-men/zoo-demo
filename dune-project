(lang dune 3.21)

(using rocq 0.11)

(name zoo-demo)

(generate_opam_files)

(authors
 "Clément Allain"
)
(maintainers
 "clement.allain@cs.au.dk"
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
 (synopsis "zoo-demo verification")
 (depends
  rocq-zoo-std
 )
)
