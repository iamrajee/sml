fun f x y = x+y
fun f1(x,y)= x+y
fun curry f1= fn x => fn y => f1(x,y)
fun uncurry f (x,y)  = f x y
