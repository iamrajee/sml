(* val a = 2+3;

[1,2,3]; *)

datatype 'a list = empty
                | C of ('a * 'a list)

fun head (x::xs) = x
(* |   head [] = empty *)

fun len (x::xs) = 1 + len(xs)
|   len _ = 0

(* val b:list = C(5,C(4,C(3,empty))) *)

fun isempty (_::_) = false
|   isempty _      = true

fun sumlist (x::xs) = x + sumlist(xs)
|   sumlist _       = 0

fun inc x = x+1

fun map f(x::xs) = f(x)::map f(xs)
|   map f(_)        = []

val c =  len [1,2,3,4]
val d = head [1,2,3,4]
val e = isempty [1]
val f = sumlist [1,2,3,4]
val g  = inc 5
val h = map inc([1,2,3,4])