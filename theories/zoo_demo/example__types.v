From zoo Require Import
  prelude.
From zoo.language Require Import
  typeclasses
  notations.
From zoo Require Import
  options.

Notation "'Nil'" := (
  in_type "zoo_demo.example.t1" 0
)(in custom zoo_tag
).
Notation "'Cons'" := (
  in_type "zoo_demo.example.t1" 1
)(in custom zoo_tag
).

Notation "'fst'" := (
  in_type "zoo_demo.example.t2" 0
)(in custom zoo_proj
).
Notation "'snd'" := (
  in_type "zoo_demo.example.t2" 1
)(in custom zoo_proj
).

Notation "'f1'" := (
  in_type "zoo_demo.example.t3" 0
)(in custom zoo_field
).
Notation "'f2'" := (
  in_type "zoo_demo.example.t3" 1
)(in custom zoo_field
).
