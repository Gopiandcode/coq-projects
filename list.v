From mathcomp.ssreflect
Require Import seq.

Notation seq := list.

Fixpoint length' A (l : list A) :=
        match l with
        | nil => 0
        | _ :: l' => S ( length' A l')
        end.


(* Merge sort in COQ - 1st split list into two *)
Fixpoint split' A (l : list A) : list A * list A :=
        match l with
        | nil => (nil, nil)
        | a::nil => (a::nil, nil)
        | a :: b :: l' => let (l1, l2) := split' A l' in (a::l1, b::l2)
        end.

