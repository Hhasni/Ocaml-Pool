(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_sum.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 21:17:15 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/16 21:17:21 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_sum f x n =
	if (n >= 0) && (x < n) then
	let rec ft_sum_tail acc x n =
		if (x <= n) then ft_sum_tail (acc +. f(n)) x (n-1) 
		else acc
	in ft_sum_tail 0. x n;
	else nan

let main () =
	print_float (ft_sum (fun i -> float_of_int (i * i)) 1 10);
	print_char '\n';
	print_float (ft_sum (fun i -> float_of_int (i * i)) 10 100000);
	print_char '\n';
	print_float (ft_sum (fun i -> float_of_int (i * i)) 1 (-1));
	print_char '\n';
	print_float (ft_sum (fun i -> float_of_int (i * i)) 30 3);
	print_char '\n';
	print_float (ft_sum (fun i -> float_of_int (i * i)) 42 43);
	print_char '\n';
	print_float (ft_sum (fun i -> float_of_int (i * i)) (-5) 2);
	print_char '\n'

let () = main ()