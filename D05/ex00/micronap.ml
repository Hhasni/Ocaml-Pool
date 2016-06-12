(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   micronap.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/23 22:46:30 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/23 22:46:33 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let my_sleep () = Unix.sleep 1

let micronap a = 
	for i = 1 to a do
		my_sleep ()
	done

let () =
	if (Array.length (Sys.argv)) > 1 then
		let av = try int_of_string (Array.get Sys.argv 1) with Failure _ -> 0 in 
		micronap (av)

 (* ocamlopt Unix.cmxa micronap.ml *)