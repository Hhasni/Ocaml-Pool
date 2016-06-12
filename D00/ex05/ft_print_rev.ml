(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_rev.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 22:32:12 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/15 22:32:17 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_rev str =
	let rec loop s =
		if s > 0 then
			begin
				print_char (String.get str (s - 1));
				loop (s - 1)
			end
		else
			print_char '\n'
	in loop (String.length str)

let main() =
	ft_print_rev ("Hello World");
	ft_print_rev ("24");
	ft_print_rev ("42 is for the braves");
	ft_print_rev ("");
	ft_print_rev ("!polP")

let () = main ()