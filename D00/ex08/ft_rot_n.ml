(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_rot_n.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 22:33:39 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/15 22:33:43 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_my_rot nb c =
	if ((int_of_char(c)) >= 65 && (int_of_char(c)) <= 90) || ((int_of_char(c)) >= 97 && (int_of_char(c)) <= 122)
		then if (((int_of_char(c) + nb) >= 65 && (int_of_char(c) + nb) <= 90) || ((int_of_char(c) + nb) >= 97 && (int_of_char(c) + nb) <= 122))
				then char_of_int (int_of_char(c) + nb)
			else ft_my_rot(nb - 26) c
	else c

let ft_rot_n nb str =
	String.map (ft_my_rot(nb)) str;;

let main() =
	print_endline (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
	print_endline (ft_rot_n 5 "abcdefghijklmnopqrstuvwxyz");
	print_endline (ft_rot_n 0 "Damned !");
	print_endline (ft_rot_n 42 "");
	print_endline (ft_rot_n 1 "NBzlk qnbjr !");
	print_endline (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
	print_endline (ft_rot_n 42 "0123456789");
	print_endline (ft_rot_n 2 "OI2EAS67B9");
	print_endline (ft_rot_n 15 "lmclnlolmcl")

let () = main ()