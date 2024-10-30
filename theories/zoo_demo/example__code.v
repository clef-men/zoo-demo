From zoo Require Import
  prelude.
From zoo.language Require Import
  typeclasses
  notations.
From zoo_demo Require Import
  example__types.
From zoo Require Import
  options.

Definition example_example1 : val :=
  rec: "example1" "param" =>
    match: "param" with
    | [] =>
        #0
    | "x" :: "l" =>
        "x" + "example1" "l"
    end.

Definition example_example2 : val :=
  rec: "example2" "param" =>
    match: "param" with
    | Nil =>
        #0
    | Cons "x" "l" =>
        "x" + "example2" "l"
    end.

Definition example_example3 : val :=
  fun: "t" =>
    "t".<fst> + "t".<snd>.

Definition example_example4 : val :=
  fun: "t" =>
    "t" <-{f1} "t".{f1} + "t".{f2}.
