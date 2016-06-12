(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   dalek.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 22:56:26 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/25 22:56:28 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class dalek =
	object (self)
		val	 _name:string 			= let rec loop s i =
										if i > 3 then
											s
										else match ((Random.int 26) + (int_of_char 'a')) with
										| y when y >= int_of_char 'a' && y <= int_of_char 'z' -> loop (s ^ (String.make 1 (char_of_int y))) (i+1)
										| _ -> loop s (i+1)
									in loop "Dalek" 1
		val  _hp:int 				= 100
		val	 mutable _sheild:bool	= true

		initializer print_endline ("New object dalek : " ^ _name) 
		method 	to_string			=  _name ^ ": " ^ (string_of_int _hp) ^ " hp, shield :" ^ (string_of_bool _sheild)
		method 	talk 				= print_endline (match (Random.int 4) with
									| 0 -> "Explain! Explain!"
									| 1 -> "Exterminate! Exterminate!"
									| 2 -> "I obey!"
									| _ -> "You are the Doctor! You are the enemy of the Daleks!")

		method 	die 				= print_endline "Emergency Temporal Shift!!"
		method 	exterminate	(x:People.people) = x#die; if (_sheild == true) then _sheild <- false else _sheild <- true 
	end