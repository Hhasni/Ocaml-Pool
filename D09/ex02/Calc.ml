module Calc =
	functor (M : Monoid.MONOID) ->
		struct
			let add x y :M.element = M.add x y
			let sub x y :M.element = M.sub x y
			let mul x y :M.element = M.mul x y
			let div x y :M.element = M.div x y
			let power a p :M.element = 
 				let rec loop acc p = match p with
	 				| 0 -> acc
	 				| _ -> loop (M.mul a acc) (p-1)
	 			in
	 			loop M.zero2 p 
			let rec fact x :M.element =
				let rec loop x acc =
					if (x > M.zero1) then
						loop (M.sub x M.zero2) (M.mul acc x)
					else
						acc
			in loop x M.zero2
	end