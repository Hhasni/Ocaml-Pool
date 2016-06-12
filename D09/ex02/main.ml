(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/27 22:37:12 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/27 22:37:15 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module Calc_int = Calc.Calc(Int.INT)
module Calc_float = Calc.Calc(Float.FLOAT)

let () =
	print_endline (string_of_int (Calc_int.power 3 3));
	print_endline (string_of_float (Calc_float.power 3.0 3));
	print_endline (string_of_int (Calc_int.mul (Calc_int.add 20 1) 2));
	print_endline (string_of_float (Calc_float.mul (Calc_float.add 20.0 1.0) 2.0));
	print_endline (string_of_int (Calc_int.power 3 10));
	print_endline (string_of_int (Calc_int.power 20 22));
	print_endline (string_of_float (Calc_float.mul (Calc_float.add 20.5 3.0) 2.4));
	print_endline (string_of_int (Calc_int.fact 0));
	print_endline (string_of_int (Calc_int.fact 1));
	print_endline (string_of_int (Calc_int.fact 3));
	print_endline (string_of_int (Calc_int.fact 9));
	print_endline (string_of_int (Calc_int.add (Calc_int.fact 3) 59));
	print_endline (string_of_float (Calc_float.fact 21.));
	print_endline (string_of_float (Calc_float.sub (Calc_float.fact 4.) (Calc_float.power 2.2 2)))
