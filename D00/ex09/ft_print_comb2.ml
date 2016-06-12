(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb2.ml                                  :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 22:34:59 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/15 22:35:20 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let display a b c d =
	print_int(a);
	print_int(b);
	print_char(' ');
	print_int(c);
	print_int(d)

let test () =
	let rec plop4 a b c d =	
		if (d <= 9) then
			begin			
				display a b c d;
				if (a <> 9 || b <> 8 || c <> 9 || d <> 9) then
					print_string(", ");
				plop4 a b c (d+1)
			end
	in
	let rec plop3 a b c =
		if (c <= 9) then
			begin
				plop4 a b c (b+1);
				plop3 a b (c+1)
			end
	in
	let rec plop2 a b =
		if (b <= 9) then
			begin
				plop3 a b a;
				plop2 a (b+1)
			end
	in
	let rec plop1 a =
		if (a <= 9) then
			begin
				plop2 a 0;
				plop1 (a + 1)
			end
	in plop1 0;
	print_char '\n'


(* 	for a = 0 to 9 do
		for b = 0 to 9 do
			for c = a to 9 do
				for d = b+1 to 9 do
					display a b c d;
					if (a <> 9 || b <> 8 || c <> 9 || d <> 9)
						then print_string(", ")
				done
			done
		done
	done;
	print_string("\n")
 *)
let main () =
	test ()
	(* ft_print_comb2() *)

let () = main ()