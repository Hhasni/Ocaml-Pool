(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   fibonacci.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 21:15:56 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/16 21:16:04 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec fibonacci n =
	if n >= 0 then
	let rec fib_term n acc1 acc2 =
		if (n = 0) then acc2
		else fib_term (n-1) acc2 (acc1 + acc2)
	in fib_term n 1 0;
	else -1

let main() =
	print_int (fibonacci (-42));
	print_char '\n';
	print_int (fibonacci 1);
	print_char '\n';
	print_int (fibonacci 2);
	print_char '\n';
	print_int (fibonacci 3);
	print_char '\n';
	print_int (fibonacci 4);
	print_char '\n';
	print_int (fibonacci 5);
	print_char '\n';
	print_int (fibonacci 6);
	print_char '\n';
	print_int (fibonacci 7);
	print_char '\n';
	print_int (fibonacci 8);
	print_char '\n';
	print_int (fibonacci 9);
	print_char '\n';
	print_int (fibonacci 10);
	print_char '\n'

let () = main()
