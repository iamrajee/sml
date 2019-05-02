signature Asig =
sig
  val y : int
  val secret : int
  val sum3 : int->int -> int
  val inc3 : int-> int
end

structure A:>Asig =
struct
  val secret  = 5
  val y  = 5
  fun sum3 a b= a+1+b
  fun inc3 c = c+1
end

structure B:>Asig = 
struct
    val secret = 8
    val y = 6
    val z = "hi"
    fun sum3 a b= a+2+b
    fun inc3 c = c+3
end


signature COUNTER = 
sig
 val incr: int -> int*int
 val show: unit -> int
end

structure Counter : COUNTER = 
struct
  val countRef = ref 0
  fun incr x = (let val y = !countRef in countRef:= y + x; (y, x)end)
  fun show() = !countRef 
end 

functor Inc(st:Asig) = 
struct
    fun sum x = x + st.y
    fun sum2 z = z + st.secret
    (* fun mult m = m + st.y *)

    fun map f(x::xs) = f(x)::map f(xs)
    |   map f(_)        = []



    val secret  = 5
    val y  = 5
    fun sum3 a b= a+1+b
    fun inc3 c = c+1
end

functor xtoStruct(val y : int) = 
struct
    fun incr x = x + y
end

structure a1 = Inc(A)
structure a2 = Inc(A)

structure b1 = Inc(B)
structure b2 = Inc(B)

val temp = 5
(* structure s1 = xtoStruct(5) *)


(* a1.map A.inc3 [1,2,3,4];
a1.map B.inc3 [1,2,3,4]; *)

(* a1.map B.inc3 [1,2,3,4]; *)