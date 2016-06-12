(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/23 22:46:55 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/23 22:46:58 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let print_joke a =
	print_endline (Array.get a (Random.int (Array.length a)))

let ft_load_Array f =
	let a = Array.make 0 "" in
	let ic = open_in f in
	let tmp = ref (a) in
	try
		while true do
			let line = input_line ic in
			tmp := Array.append !tmp [|line|]
		done
	with
 	| End_of_file -> close_in ic; print_joke !tmp

let () =
	Random.self_init();
	if (Array.length Sys.argv) < 2 then
		print_endline "USAGE: ./a.out [File]"
	else
		ft_load_Array (Array.get Sys.argv 1)