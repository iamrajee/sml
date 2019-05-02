fun isempty (_::_) = false
  | isempty _      = true
fun len(x::xs)      = 1+len xs
| len _            = 0
fun sum(x::xs)    = x+sum xs
| sum _           = 0
fun num x       = x+1
fun map num (x::xs) = num x :: map num xs
| map num _         = []

val x=len[1,2,3]
val y=sum[4,5,6]
val z = map num [1,2,3]