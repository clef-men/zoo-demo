let rec example1 = function
  | [] ->
      0
  | x :: l ->
      x + example1 l

type 'a t1 =
  | Nil
  | Cons of 'a * 'a t1

let rec example2 = function
  | Nil ->
      0
  | Cons (x, l) ->
      x + example2 l

type t2 =
  { fst: int;
    snd: int;
  }

let example3 t =
  t.fst + t.snd

type t3 =
  { mutable f1: int;
    f2: int;
  }

let example4 t =
  t.f1 <- t.f1 + t.f2
