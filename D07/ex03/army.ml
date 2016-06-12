(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   army.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 22:56:20 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/25 22:56:21 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class ['a] army (l: 'a list) =
	object
		val	mutable _lst:'a list = l

		method 	add  	v 	= _lst <- _lst @ [v]

		method delete = match _lst with
			| [] -> ()
			| head::tail -> _lst <- tail
		method get_lst = _lst 
	end