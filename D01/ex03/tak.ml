(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   tak.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 21:15:34 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/16 21:15:38 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec tak x y z =
	if (y < x) then tak (tak (x - 1) y z) (tak (y - 1) z x) (tak(z - 1) x y)
	else z

let main () =
	print_endline "Example tests:";	
	print_int(tak 1 2 3);
	print_char '\n';
	print_int(tak 5 23 7);
	print_char '\n';
	print_int(tak 9 1 0);
	print_char '\n';
	print_int(tak 1 1 1);
	print_char '\n';
	print_int(tak 0 42 0);
	print_char '\n';
	print_int(tak 23498 98734 98776);
	print_endline "\nMy tests:";
	print_int(tak 42 42 42);
	print_char '\n';
	print_int(tak 0 0 (-2));
	print_char '\n';
	print_int(tak (-1) 0 0);
	print_char '\n';
	print_int(tak 0 (-1) 0);
	print_char '\n'

let () = main ()

