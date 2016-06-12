(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   leibniz_pi.ml                                      :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 21:17:40 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/16 21:17:44 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let leibniz_pi x =
	if (x >= 0.) then
	let rec ft_loop o x acc =
		if ((4. *. atan x) < (4. *. atan 1.)) then ft_loop o (x +. o) (acc +. 1.)
		else int_of_float(acc)
	in ft_loop x x 1.;
	else -1

let main () =
	print_int (leibniz_pi 0.1);
	print_char '\n';
	print_int (leibniz_pi 0.5);
	print_char '\n';
	print_int (leibniz_pi 0.01);
	print_char '\n';
	print_int (leibniz_pi 0.000001);
	print_char '\n';
	print_int (leibniz_pi 2.);
	print_char '\n'

let () = main ()