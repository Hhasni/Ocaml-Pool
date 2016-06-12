module App =
	struct
		type project = string * string * int
		let zero = ("", "", 0)
		let combine (p1:project) (p2:project) =
			let get_grade (pr:project) = match pr with
			| (_,_,x) -> x
			in
			let get_type (pr:project) = match pr with
			| (y,_,_) -> y
			in
			let final = (((get_grade p1) + (get_grade p2)) / 2) in
			if final >= 80 then
				(((get_type p1) ^ (get_type p2)), "succeed", final)
			else
				(((get_type p1) ^ (get_type p2)), "failed", final)
		let success (x:project) = match x with
			| (s,_,_) -> (s,"failed", 0)
		let fail (x:project) = match x with
			| (s,_,_) -> (s,"succeed", 80)
	end