(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_string_all.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 22:32:46 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/15 22:32:51 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let is_digit c = c >= '0' && c <= '9';;

let ft_string_all ptr str =
	let rec loop s =
		if (s > 0) then
			if (ptr (String.get str s) = false) then 
				false
			else
				loop (s - 1)
		else
			true
	in loop ((String.length str) - 1)
 
let main() = 
	print_endline (string_of_bool (ft_string_all is_digit "0123456789"));
	print_endline (string_of_bool (ft_string_all is_digit "O12EAS67B9"));
	print_endline (string_of_bool (ft_string_all is_digit "42PLOP"))


let () = main ()