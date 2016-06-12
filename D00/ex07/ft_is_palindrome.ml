(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_is_palindrome.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 22:33:22 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/15 22:33:30 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_is_palindrome str =
	let rec loop z a =
		if (a < (String.length str) - 1) then
			begin
				if (String.get str a ) <> (String.get str z)	
					then false
				else
					loop (z - 1) (a + 1)
			end
		else
			true
	in
	loop ((String.length str) - 1) 0

let main() =
	print_endline(string_of_bool(ft_is_palindrome("radar")));
	print_endline(string_of_bool(ft_is_palindrome("aa")));
	print_endline(string_of_bool(ft_is_palindrome("radar.")));
	print_endline(string_of_bool(ft_is_palindrome("radddar")));
	print_endline(string_of_bool(ft_is_palindrome("raddar")));
	print_endline(string_of_bool(ft_is_palindrome("bob")));
	print_endline(string_of_bool(ft_is_palindrome("plop")))

let () = main ()