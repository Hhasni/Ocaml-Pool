(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   examples_of_files.ml                               :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/23 22:47:15 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/23 22:47:17 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let examples_of_files p =
	let ret = ref [] in
	let ic = open_in p in
	let load line =	
		let floats = ref [] in
		let i = ref 0 in
		try
			while !i < String.length line do
				let j = String.index_from line !i ',' in
				floats := float_of_string (String.sub line !i (j - !i)) :: !floats;
				i := j + 1
			done;
			(Array.of_list (List.rev !floats), "")
		with
			| Not_found -> (Array.of_list (List.rev !floats), String.sub line !i (String.length line - !i))
	in
	let run () =
		try
			while true do
				ret := load (input_line ic) :: !ret
			done;
			close_in ic;
			!ret
		with
			| End_of_file -> close_in ic ; !ret
	in
	run ()

let print_me t =
	for i = 0 to (Array.length t -1) do
		print_endline (string_of_float (Array.get t i))
	done

let ft_display a =
	let rec loop l = match l with
		| (x, y)::tail -> print_me x; print_endline y ; loop tail
		| _ -> print_string "\n"
	in
	loop a

let () =
	if (Array.length Sys.argv) < 2 then
		print_endline "USAGE: ./a.out [File]"
	else
		ft_display (examples_of_files (Array.get Sys.argv 1))