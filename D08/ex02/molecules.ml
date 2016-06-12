class virtual molecules (n:string) (l:Atom.atom list) =
	object (self)
		val 	_name 			= n
		val 	_lst 			= List.sort (fun e1 e2 -> if e2#symbol < e1#symbol then 1 else -1) l
		method lst 				= _lst
		method name 			= _name
		method formula 			=
				let rec count elem lst acc = match lst with
					| head::tail -> if (head#equals elem) then count elem tail (acc+1) else (acc, lst)
					| _ -> (acc, lst)
				and loop l = match l with
					| head::tail -> let (x, y) = (count head tail 1) in (head#symbol) ^ (if (x > 1) then (string_of_int x) else "") ^ (loop y)
					| _ -> ""
				in loop _lst
		
		method to_string 				= self#name ^ " : " ^ self#formula
		method equals 	(x:molecules)	= (self#name = x#name) && (self#formula = x#formula)
	end