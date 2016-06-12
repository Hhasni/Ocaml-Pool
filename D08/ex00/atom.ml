class virtual atom =
	object (self)
		method virtual name 			: string 
		method virtual symbol 			: string 
		method virtual atomic_number 	: int 

		method to_string 			= self#name ^ " : " ^ self#symbol ^ ", " ^ (string_of_int self#atomic_number)
		method equals 	(x:atom)	= (self#name = x#name) && (self#symbol = x#symbol) && (self#atomic_number = x#atomic_number)
	end