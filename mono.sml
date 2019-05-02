(* Type inference *)
datatype 'v Monotype = BOOL
                    | ARROW of 'v Monotype * 'v Monotype     (*power of 'v?*)
                    | TVAR of 'v

datatype 'v Exp = V of 'v
                | A of 'v Exp * 'v Exp
                | L of 'v * 'v Exp

type 'v Type = 'v list * 'v Monotype


datatype 'v VAR = User of 'v
                | Temp of int

(* fun fresh U = Temp(Uid.allocate()) *)
TVAR (ARROW(TVAR"x",TVAR"x"))


(* type Avar = atom Var
type SExp = AVar Exp
type AExp = atom Expr
val sanitize = AExp->SExp *)

(* datatype join = 'v Monotype Monotype->'v Monotype *)
