module FLOAT : (Monoid.MONOID with type element = float) =
	struct
		type 	element	= float
		let 	zero1 	: element = 0.0
		let 	zero2 	: element = 1.0
		let  	add	 a b: element = a +. b
		let  	sub	 a b: element = a -. b
		let  	mul  a b: element = a *. b
		let  	div  a b: element = a /. b
	end