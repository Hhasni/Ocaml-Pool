(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   army.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 22:57:01 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/25 22:57:03 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class ['a] army (l: 'a list) =
	object
		val	mutable _lst:'a list = l

		method display_army =
			let rec loop (l: 'a list) = match l with
			    | head::tail -> print_endline(head#to_string); loop tail
			    | [] -> ()
			in loop _lst

		method 	add  	v 	= _lst <- _lst @ [v]

		method delete = match _lst with
			| [] -> ()
			| head::tail -> _lst <- tail
		method get_lst = _lst 
	end