(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_string.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 21:14:50 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/16 21:14:55 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let repeat_string ?(str="x") n =
	let rec loop s n =
		if (n = 0) then	s
		else (s ^ loop s (n - 1))
	in
	if (n > 0) then loop str (n - 1)
	else if (n = 0) then ""
	else "Error"

let main () =
	print_endline "Example tests:";
	print_string (repeat_string (-1));
	print_char ('\n');
	print_string (repeat_string 0);
	print_char ('\n');
	print_string (repeat_string ~str:"Toto" 1);
	print_char ('\n');
	print_string (repeat_string 2);
	print_char ('\n');
	print_string (repeat_string ~str:"a" 5);
	print_char ('\n');
	print_string (repeat_string ~str:"what" 3);
	print_char ('\n');
	print_endline "\nMy tests:";
	print_string (repeat_string ~str:"Hello" 2);
	print_char ('\n');
	print_string (repeat_string ~str:"" 10);
	print_char ('\n');
	print_string (repeat_string ~str:"Toto" 5);
	print_char ('\n')

let () = main ()