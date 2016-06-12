module Try =
	struct
		type 'a t = Success of 'a | Failure of exn

		let return x = Success x

		let bind x f = match x with
			| Success (s) -> f s
			| Failure (er) -> Failure (er)

		let recover x f = match x with
			| Failure (er) -> f er
			| Success (s) -> Success (s)

		let filter x f = match x with
			| Success (s) when (f s) = true -> Success (s)
			| Success (f) -> Failure (Invalid_argument "Nop this is a Failure")
			| Failure (er) -> Failure (er)

		let flatten x = match x with
			| Failure (o) -> Failure (o)
			| Success (i) -> match i with
								| Success (l) -> Success (l)
								| Failure (p) -> Failure (p)

	end
