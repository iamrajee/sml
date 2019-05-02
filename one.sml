(* use "one.sml" *)

signature UNIQUE = 
sig
    type uid
    val allocate : unit -> uid
    val toInt    : uid  -> int
end

functor Unique (E : sig end ): UNIQUE = 
struct
    
    type uid     = int
    
    val x            = ref 4
    
    fun alloc ()  = let val y = !x in x := y + 1; y end   
    fun allocate ()     = (x := !x + 1 ; !x) 
    
    fun toInt a = a                       
     
end

(*


Output with ":>"


structure b : sig end
- structure aa = Unique(a);     
structure aa : UNIQUE
- structure bb = Unique(b);
structure bb : UNIQUE
- bb.toInt(aa.allocate());
stdIn:8.1-8.24 Error: operator and operand don't agree [tycon mismatch]
  operator domain: bb.uid
  operand:         aa.uid
  in expression:
    bb.toInt (aa.allocate ())



Output with simple : (works as usual)

- structure a = struct end
= ; 
structure a : sig end
- structure b = struct end
= ;
structure b : sig end
- structure aa = Unique(a);
structure aa : UNIQUE
- structure bb = Unique(b);
structure bb : UNIQUE
- aa.toInt(bb.allocate())
= ;
val it = 5 : int
- 



*)
