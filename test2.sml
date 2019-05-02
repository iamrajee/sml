fun plusc x y = x+y
fun plusun (x,y)= x+y

val c = plusc 2 3
val u = plusun(2,3)

fun uncarry f(x,y) = f x y
fun carry f x y = f(x,y)

val c1 = carry plusun 2 3
val u1 = uncarry plusc(2,3)