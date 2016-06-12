module Watchtower =
	struct
		type hour = int
		let zero = 12
		let add (x:hour) (y:hour) =  if ((x+y) mod 12) == 0 then 12 else ((x+y) mod 12)
		let sub (x:hour) (y:hour) =  if ((x-y) mod 12) == 0 then 12 else ((x+y) mod 12)
	end
