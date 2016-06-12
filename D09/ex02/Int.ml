module INT : (Monoid.MONOID with type element = int) =
	struct
		type 	element	= int
		let 	zero1 	: element = 0
		let 	zero2 	: element = 1
		let  	add	 a b: element = a + b
		let  	sub	 a b: element = a - b
		let  	mul  a b: element = a * b
		let  	div  a b: element = if (b = 0) then 0 else (a / b);
	end