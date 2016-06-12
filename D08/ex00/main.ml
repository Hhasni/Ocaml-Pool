(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/26 23:01:01 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/26 23:01:03 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () = 
	let h = new Hydrogen.hydrogen in
	let c = new Carbon.carbon in
	let o = new Oxygen.oxygen in
	let f = new Fer.fer in
	let br = new Brome.brome in
	let ba = new Baryum.baryum in
	print_endline h#to_string;
	print_endline c#to_string;
	print_endline o#to_string;
	print_endline f#to_string;
	print_endline br#to_string;
	print_endline ba#to_string
