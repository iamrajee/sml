structure LambdaCalculus = struct 
(*
     a lambda calculus expression is 
     1. a variable
     2. an application (f e) where f and r are themselves lambda calculus expressions
     3. or a function abstraction ƛ x . e where x is a variable and e is a lambda calculus expression.
*)

    datatype expr   = V of string 
                    | A of expr * expr 
                    | L of string * expr 

    fun pretty (V x)    = x
    |   pretty (A (f,e))= bracket f ^ " " ^ bracket e
    |   pretty (L (x,e))= "λ " ^ x ^ ". " ^ pretty e 
    and bracket (V x) = x
        |   bracket e     = "(" ^ pretty e ^ ")"

    fun var x = V x

    fun lambda(x,e) = L (x,e)

    fun pr e = print(pretty e)
end   

val e
open LambdaCalculus
e = lambda ("x", e);
pr e;

