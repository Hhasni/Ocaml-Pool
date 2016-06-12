(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   crossover.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/17 22:49:52 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/17 22:49:58 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec crossover l1 l2 =
	let rec loopa elem lst = match lst with
		| [] -> []
		| hd::tl -> if (elem = hd) then [elem] else loopa elem tl 
	in match l1 with
	| [] -> []
	| hd::tl -> loopa hd l2 @ crossover tl l2

let () =
	print_endline "Test int:";
	let rec loop_display lst = match lst with
		| [] -> print_char('\n'); ()
		| hd::tl -> print_int(hd); print_char ('\n'); loop_display tl
	in loop_display (crossover [1;2;3] [1;2;3]);
	loop_display (crossover [1;3] [1;2;3]);

	print_endline "Test string:";
	let rec loop_display lst = match lst with
		| [] -> print_char('\n'); ()
		| hd::tl -> print_endline(hd); loop_display tl
	in loop_display (crossover ["42";"plop";"ocaml";"ocalm"] ["42";"plop";"ocaml";"ocalm"]);
	loop_display (crossover ["56";"423";"oo";"test";"plop";"";"ocalmfr"] ["test";"";"okok";"42";"plop";"ocaml";"ocalm";"blop"])
