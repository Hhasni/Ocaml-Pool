class virtual reaction (l1:Molecule.molecule list) (l2:Molecule.molecule list) =
	object (self)
		val _start = l1
		val _end = l2
		method virtual get_start 		: (molecule * int) string 
		method virtual get_result 		: (molecule * int) string 
		method virtual balance 			: reaction 
		method virtual is_balance 		: bool 
	end