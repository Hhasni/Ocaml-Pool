(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   people.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 22:54:45 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/25 22:54:47 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class people name =
	object
		val	_name:string 	= name
		val mutable _hp:int = 100

		method 	to_string	=  _name ^ ": " ^ string_of_int _hp ^ " hp"
		method 	talk 		= print_endline ("I’m " ^ _name ^ "! Do you know the Doctor?")
		method 	die 		= print_endline "Aaaarghh!"

		initializer print_endline ("New object people : " ^ _name) 
	end