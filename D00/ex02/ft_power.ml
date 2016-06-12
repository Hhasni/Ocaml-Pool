(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_power.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 22:30:30 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/15 22:30:33 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_power nb pow =
	if pow = 0
		then 1
		else nb * ft_power nb (pow - 1)

let main() =
	print_int (ft_power 5 2);
	print_char '\n';
	print_int (ft_power 2 4);
	print_char '\n';
	print_int (ft_power 3 0);
	print_char '\n';
	print_int (ft_power 0 5);
	print_char '\n'

let () = main()