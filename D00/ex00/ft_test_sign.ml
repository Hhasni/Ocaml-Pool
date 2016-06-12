(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_test_sign.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 22:30:03 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/15 22:30:10 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_test_sign a =
	if a < 0
	then print_endline("negative")
	else print_endline("positive")

let main() =
	ft_test_sign 42;
	ft_test_sign 0;
	ft_test_sign 1;
	ft_test_sign (-1);
	ft_test_sign (-21)

let () = main()