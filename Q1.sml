(*Rajendra Singh, Roll no. 111601017, Assignment 1*)

datatype binop = PLUS | MUL | DIV | MINUS
datatype uniop = UNIMINUS | UNIPLUS
datatype expr = C of real | B of (binop*expr*expr) | U of (uniop*expr)

fun binopDenote PLUS(x,y)=x+y
        | binopDenote MUL(x,y)=x*y
        | binopDenote MINUS(x,y)=x-y
        | binopDenote DIV(x,y)=x/y

fun uniDenote UNIMINUS(x)=x
    | uniDenote UNIPLUS(x)=x

fun expDenote (B (b,x,y))=binopDenote b (expDenote(x),expDenote(y))
    | expDenote (U (u,z))=uniDenote u(expDenote(z))
    |   expDenote (C(w))= w

(* val temp = expDenote (PLUS(3,4)) *)