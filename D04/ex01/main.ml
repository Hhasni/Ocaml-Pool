(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/20 22:13:47 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/20 22:13:50 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let print_card card =
	print_string ( ("[" ^ Value.toString card ^ "] -> "));
	print_string (Value.toStringVerbose card);
	print_string " -> ";
	print_int (Value.toInt card);
	print_char '\n'

let rec display_foreach lst = match lst with
	| [] -> ()
	| head::tail -> print_card head; display_foreach tail

let rec display_prev_next lst = match lst with
	| [] -> ()
	| head::tail -> 
				try
					(
					print_string("current	: ");
					print_card head;
					print_string ("-prev 	: ");
					print_card (Value.previous head);
					print_string ("-next 	: ");
				 	print_card (Value.next head);
					display_prev_next tail)
				with Invalid_argument e -> print_endline ("Exception catch : " ^ e)

let main () =
	let lst = match Value.all with
		| [] -> []
		| _::tail -> tail
	in
	display_foreach Value.all;
	print_endline "\nException:";
	display_prev_next Value.all;
	print_endline "\nPrev and next :";
	display_prev_next lst

let () = main ()