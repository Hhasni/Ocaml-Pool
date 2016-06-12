(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   one_nn.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/23 22:47:20 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/23 22:47:23 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type radar = float array * string

let min a b =
	if a < b
		then a
	else
		b

let eu_dist a b =
	let la = min ((Array.length a) -1) ((Array.length b) -1) in  
	let sum = ref 0. in
	for i = 0 to la do
		sum := !sum +. ((Array.get a i -. Array.get b i) ** 2.)
	done;
	sqrt !sum

let manage v r = match r with
	| (x, _) -> print_float(eu_dist v x) 

let plop (x, y) =
	x

let rec one_nn r l = 
	let rec loop r l i = match r with
	| (x, _)::tail -> 
						begin
							let v = eu_dist x (plop l) in 
								if (v < i) then
									"good\n" ^ loop tail l v 
								else
									"bad\n" ^ loop tail l v
						end
	| _ ->  ""
	in 
	match r with
		| (x,_)::tail -> loop r l (eu_dist x (plop l))
		| _ -> loop r l 0.

let () =
	let a = ([|1.1; 1.3|], "lol" ) :: ([|1.3; 1.4|], "lol" ) :: [] in
	let b = ([|1.3; 1.2|], "loli") in
	print_string (one_nn a b)
