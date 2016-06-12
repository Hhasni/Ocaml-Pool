(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   doctor.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 22:56:02 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/25 22:56:04 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class doctor name age sidekick =
	object (self)
		initializer print_endline ("New object doctor : " ^ name)
		val	 _name:string 			= name
		val  _age:int 				= age
		val  mutable _hp:int 		= 100
		val	 _sidekick:People.people = sidekick

		method 	to_string			=  _name ^ ": " ^ string_of_int _hp ^ " hp, " ^ string_of_int _age ^ " Years Old\n\t sidekick :" ^ _sidekick#to_string
		method 	talk 				= print_endline ("Hi! I’m the Doctor!")
		method 	die 				= print_endline "Aaaarghh!"
		method 	travel_in_time x y	= self#tardis; ignore(x+y); new doctor name _age sidekick
		method 	use_sonic_screwdriver = print_endline ("Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii Whiiiiwhiiiwhiii")
		method  regenerate			= _hp <- 100
		method  tardis 				= print_endline "
          _
    _____|#|_____
   |_____________|
  |_______________|
|||_POLICE_##_BOX_|||
 | |¯|¯|¯|||¯|¯|¯| |
 | |-|-|-|||-|-|-| |
 | |_|_|_|||_|_|_| |
 | ||~~~| | |¯¯¯|| |
 | ||~~~|!|!| O || |
 | ||~~~| |.|___|| |
 | ||¯¯¯| | |¯¯¯|| |
 | ||   | | |   || |
 | ||___| | |___|| |
 | ||¯¯¯| | |¯¯¯|| |
 | ||   | | |   || |
 | ||___| | |___|| |
|¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|
 ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯"
 	end