(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_alphabet.ml                               :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 22:31:23 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/15 22:31:40 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_alphabet ()=
	let z = int_of_char ('z') in
	let rec loop c =
		if (c <= z) then
			begin
				print_char (char_of_int c);
				loop (c + 1)
			end
	in
	loop (int_of_char ('a'));
	print_char('\n')

let main() =
	ft_print_alphabet()

let () = main ()