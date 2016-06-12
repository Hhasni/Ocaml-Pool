(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   eu_dist.ml                                         :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/23 22:47:09 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/23 22:47:11 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

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

let display a =
	for i = 0 to ((Array.length a) -1)  do
		print_float (Array.get a i);
		print_string "\n"
	done

let () =
	let a = Array.make 2 0.1 in
	let b = Array.make 2 0.1 in
	Array.set a 1 1.1;
	Array.set b 0 1.1;
	print_endline "A 	=";
	display a;
	print_endline "B 	=";
	display b;
	print_endline "Res 	=";
	print_float (eu_dist a b)