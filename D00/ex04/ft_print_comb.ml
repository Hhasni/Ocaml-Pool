(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 22:31:50 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/15 22:31:54 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb () =
	let rec comb x y z =
		print_int x;
		print_int y;
		print_int z;
		if (x < 7) then
			print_string ", "
		else
			print_string "\n";
		if (z < 9) then
			comb x y (z+1)
		else
			if (y < 8) then
				comb (x+1) (y+1) (y+2)
	in comb 0 1 2

let main() =
	ft_print_comb()

let () = main ()