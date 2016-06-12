(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   encode.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/17 22:49:40 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/17 22:49:46 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let encode value = 
	let rec loop_encode elem l n = match l with
		| [] -> [(n, elem)]
		| hd::tl -> if elem = hd then loop_encode elem tl (n+1) else [(n, elem)] @ ( loop_encode hd l 0) 
	in match value with
	| [] -> []
	| hd::_ -> loop_encode hd value 0

let () =
	let get_1 (_,a) = a in
	let get_0 (a,_) = a in
	let rec loop l =
		match l with
		| [] -> print_char '\n'; ()
		| hd::tl -> print_int(get_0 hd); print_char ' '; print_int(get_1 hd); print_char '\n'; loop tl
	in loop (encode[0;0;0;0;1]);
	loop (encode[-1;-1;-2;2;1;4;-3;5;6]);
	loop (encode[]);
	let get_1 (_,a) = a in
	let get_0 (a,_) = a in
	let rec loop l =
		match l with
		| [] -> print_char '\n'; ()
		| hd::tl -> print_int(get_0 hd); print_char ' '; print_endline(get_1 hd); loop tl
	in loop (encode["ll";"ss";"ss";"ss";"i";"l";"42"]);
	loop (encode["ok";"pap";"pap";"pap"]);
	let get_1 (_,a) = a in
	let get_0 (a,_) = a in
	let rec loop l =
		match l with
		| [] -> print_char '\n'; ()
		| hd::tl -> print_int(get_0 hd); print_char ' '; print_endline(string_of_bool(get_1 hd)); loop tl
	in loop (encode[true;true;true;true;false;false;false]);
