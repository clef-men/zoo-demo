Require Import zoo.prelude.
Require Import zoo.language.typeclasses.
Require Import zoo.language.notations.
Require Import zoo_demo.example__types.
Require Import zoo.options.

Definition example٠example1 : val :=
  rec: "example1" "param" =>
    match: "param" with
    | [] =>
        0
    | "x" :: "l" =>
        "x" + "example1" "l"
    end.

Definition example٠example2 : val :=
  rec: "example2" "param" =>
    match: "param" with
    | Nil =>
        0
    | Cons "x" "l" =>
        "x" + "example2" "l"
    end.

Definition example٠example3 : val :=
  fun: "t" =>
    "t".<fst> + "t".<snd>.

Definition example٠example4 : val :=
  fun: "t" =>
    "t" <-{f1} "t".{f1} + "t".{f2}.
