(* DO NOT MODIFY THIS FILE DIRECTLY *)
(* It is autogenerated by dev/tools/update-compat.py. *)
Set Warnings "+deprecated".

Notation bar := option (compat "8.8").

Definition foo (x: nat) : nat :=
  match x with
  | 0 => 0
  | S bar => bar
  end.
