(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

From Ltac2 Require Import Init Std.

Ltac2 @ external get : ident list -> Std.reference option := "ltac2" "env_get".
(** Returns the global reference corresponding to the absolute name given as
    argument if it exists. *)

Ltac2 @ external expand : ident list -> Std.reference list := "ltac2" "env_expand".
(** Returns the list of all global references whose absolute name contains
    the argument list as a prefix. *)

Ltac2 @ external path : Std.reference -> ident list := "ltac2" "env_path".
(** Returns the absolute name of the given reference. Panics if the reference
    does not exist. *)

Ltac2 @ external instantiate : Std.reference -> constr := "ltac2" "env_instantiate".
(** Returns a fresh instance of the corresponding reference, in particular
    generating fresh universe variables and constraints when this reference is
    universe-polymorphic. *)
