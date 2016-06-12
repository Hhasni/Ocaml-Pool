(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_x.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 21:14:29 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/16 21:14:34 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let repeat_x i =
	let str = "" in
 	let rec ft_loop str i =
		if (i > 0)
			then ft_loop (str ^ "x") (i - 1)
			else str
	in
	if (i >= 0)
		then ft_loop str (i)
		else "Error"

let main() =
	print_string(repeat_x (-1));
	print_char '\n';
	print_string(repeat_x 0);
	print_char '\n';
	print_string(repeat_x 1);
	print_char '\n';
	print_string(repeat_x 2);
	print_char '\n';
	print_string(repeat_x 3);
	print_char '\n';
	print_string(repeat_x 4);
	print_char '\n';
	print_string(repeat_x 5);
	print_char '\n';
	print_string(repeat_x 4);
	print_char '\n';
	print_string(repeat_x 3);
	print_char '\n';
	print_string(repeat_x 2);
	print_char '\n';
	print_string(repeat_x 1);
	print_char '\n';
	print_string(repeat_x (-10));
	print_char '\n'

let () = main()