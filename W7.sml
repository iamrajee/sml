signature ASig = sig

val y:int
end

structure A:ASig
            = struct
val somefunnyname = 42
val y = 56
end

structure B:ASig
            = struct
val y = 45
val internal= 56
end

functor IncrementBy (S:ASig) = struct
 fun sum x = x + S.y
end

functor IBy (val y : int) = struct
fun incr x = x + y
end

signature COUNTER = sig
 val incr: int -> unit
 val show: int
end

structure Counter : COUNTER = struct
  val countRef = ref 0
  fun incr x = countRef := !countRef + x
  fun show() = !countRef 
end 


