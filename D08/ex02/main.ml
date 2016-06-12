(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/26 23:06:25 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/26 23:06:29 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let methane = new Methane.methane in
	let ethane = new Ethane.ethane in
	let octane = new Octane.octane in
	print_endline methane#to_string;
	print_endline ethane#to_string;
	print_endline octane#to_string
