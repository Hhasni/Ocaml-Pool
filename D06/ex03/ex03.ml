(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex03.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/24 22:03:30 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/24 22:03:33 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module type FIXED = sig
	type 	t
	val 	of_float : float -> t
	val 	of_int : int -> t
	val 	to_float : t -> float
	val 	to_int : t -> int
	val 	to_string : t -> string
	val 	zero : t
	val 	one : t
	val 	succ : t -> t
	val 	pred : t -> t
	val 	min : t -> t -> t
	val 	max : t -> t -> t
	val 	gth : t -> t -> bool
	val 	lth : t -> t -> bool
	val 	gte : t -> t -> bool
	val 	lte : t -> t -> bool
	val 	eqp : t -> t -> bool
	val 	eqs : t -> t -> bool
	val 	add : t -> t -> t
	val 	sub : t -> t -> t
	val 	mul : t -> t -> t
	val 	div : t -> t -> t
	val 	foreach : t -> t -> (t -> unit) -> unit
end

module type FRACTIONNAL_BITS =
	sig
		val bits : int
	end

module type MAKE =
	functor (FracBit: FRACTIONNAL_BITS) -> FIXED

module Make : MAKE =
	functor (FracBit: FRACTIONNAL_BITS) ->
		struct
			type 	t = int
			let of_float i =
			   		let round v = if (ceil v) -. v < v -. (floor v) then ceil v else floor v in
            		int_of_float (round (i *. (float_of_int (1 lsl FracBit.bits))))
			let 	of_int v = v lsl FracBit.bits
			let 	to_float i = float_of_int i /. (float_of_int (1 lsl FracBit.bits))
			let 	to_int v = v lsr FracBit.bits
			let 	to_string v = string_of_float (to_float v)
			let 	zero = 0
			let 	one = 1 lsl FracBit.bits
			let 	succ v = v + 1
			let 	pred v = v - 1
			let 	min a b = if (a <= b) then a else b
			let 	max a b = if (a <= b) then b else a
			let 	gth a b = (a > b)
			let 	lth a b = (a < b)
			let 	gte a b = (a >= b)
			let 	lte a b = (a <= b)
			let 	eqp a b = (a == b)
			let 	eqs a b = (a = b)
			let 	add a b = a + b
			let 	sub a b = a - b
			let 	mul a b = a * b
    		let 	div a b = ((a lsl FracBit.bits) + (b / 2)) / b
    		let 	rec foreach a b f = if lte a b then (f a; foreach (succ a) b f)
end

module Fixed4 : FIXED = Make (struct let bits = 4 end)
module Fixed8 : FIXED = Make (struct let bits = 8 end)

let () =
	let x8 = Fixed8.of_float 21.10 in
	let y8 = Fixed8.of_float 21.32 in
	let r8 = Fixed8.add x8 y8 in
	print_endline (Fixed8.to_string r8);
	Fixed4.foreach (Fixed4.zero) (Fixed4.one) (fun f -> print_endline (Fixed4.to_string f));
	print_endline "_______________________";
	print_endline (Fixed8.to_string (Fixed8.mul x8 y8));
    print_endline (Fixed8.to_string (Fixed8.div x8 y8));
    print_endline (Fixed8.to_string (Fixed8.min x8 y8));
    print_endline (Fixed8.to_string (Fixed8.max x8 y8));
    print_endline (Fixed8.to_string (Fixed8.sub x8 y8))
