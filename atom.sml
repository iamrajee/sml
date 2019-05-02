structure LambdaCalculus = struct 
(*
     a lambda calculus expression is 
     1. a variable
     2. an application (f e) where f and r are themselves lambda calculus expressions
     3. or a function abstraction ƛ x . e where x is a variable and e is a lambda calculus expression.
*)

    datatype expr   = V of Atom.atom 
                    | A of expr * expr 
                    | L of Atom.atom * expr 

    fun pretty (V x)    = Atom.toString x
    |   pretty (A (f,e))= bracket f ^ " " ^ bracket e
    |   pretty (L (x,e))= "@ " ^ Atom.toString x ^ ". " ^ pretty e 
    and bracket (V x) = Atom.toString x
        |   bracket e     = "(" ^ pretty e ^ ")"


    fun var (x:string):expr = V (Atom.atom x)
    fun lambda x e = L (Atom.atom(x) , e)
    fun app e1 e2 = A (e1 , e2)

    (* fun freeVariable () *)

end   

(*
    pretty (L (Atom.atom "x" , V (Atom.atom "x")));

    pretty (lambda "x" (var "x"));

    val K = lambda "x" (lambda "y" (var "x"))    

    val I = lambda "x" (var "x")

    pretty (app K I)
*)