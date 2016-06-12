(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ackermann.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 21:15:12 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/16 21:15:18 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ackermann m n=
	if (m = 0) then (n + 1)
	else if (m > 0 && n = 0) then ackermann (m -1) 1
	else if (n > 0 && m > 0) then ackermann (m - 1) (ackermann m (n - 1))
	else -1

let main() =
	print_endline "Example tests:";	
	print_int (ackermann (-1) 7);
	print_char '\n';
	print_int (ackermann 0 0);
	print_char '\n';
	print_int (ackermann 2 3);
	print_char '\n';
	print_int (ackermann 4 1);
	print_char '\n';
	print_endline "\nMy tests:";
	print_int (ackermann (-1) (-1));
	print_char '\n';
	print_int (ackermann 1 (-1));
	print_char '\n';
	print_int (ackermann 2 2);
	print_char '\n';
	print_int (ackermann 3 3);
	print_char '\n'

let () = main ()