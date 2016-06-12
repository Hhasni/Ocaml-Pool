(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   iter.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 21:16:41 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/16 21:16:49 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec iter f x n =
	if (n < 0) then -1
	else if (n = 0) then x
	else f (iter f x (n - 1))

let main () =
	print_endline "Example tests:";
	print_int(iter (fun x -> x * x) 2 4);
	print_char ('\n');
	print_int(iter (fun x -> x * 2) 2 4);
	print_endline "\nMy tests:";
	print_int(iter (fun x -> x * 0) 2 4);
	print_char ('\n');
	print_int(iter (fun x -> x * x) (-1) 2);
	print_char ('\n');
	print_int(iter (fun x -> x * x) 2 (-1));
	print_char ('\n');
	print_int(iter (fun x -> x * (-1)) 2 1);
	print_char ('\n')

let () = main ()