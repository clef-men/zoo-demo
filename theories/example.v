From zoo Require Import
  prelude.
From zoo.language Require Import
  notations
  diaframe.
From zoo.std Require Import
  lst.
From zoo Require Import
  options.

Definition example1 : val :=
  rec: "sum" "l" =>
    match: "l" with
    | [] =>
        #0
    | "x" :: "l" =>
        "x" + "sum" "l"
    end.

Notation "'Nil'" := (
  in_type "t1" 0
)(in custom zoo_tag
).
Notation "'Cons'" := (
  in_type "t2" 1
)(in custom zoo_tag
).

Definition example2 : val :=
  rec: "sum" "l" =>
    match: "l" with
    | Nil =>
        #0
    | Cons "x" "l" =>
        "x" + "sum" "l"
    end.

Notation "'fst'" := (
  in_type "t2" 0
)(in custom zoo_proj
).
Notation "'snd'" := (
  in_type "t2" 1
)(in custom zoo_proj
).

Definition example3 : val :=
  fun: "t" =>
    "t".<fst> + "t".<snd>.

Notation "'f1'" := (
  in_type "t2" 0
)(in custom zoo_field
).
Notation "'f2'" := (
  in_type "t2" 1
)(in custom zoo_field
).

Definition example4 : val :=
  fun: "t" =>
    "t" <-{f1} "t".{f1} + "t".{f2}.
