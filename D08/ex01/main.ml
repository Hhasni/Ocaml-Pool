(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/26 23:03:43 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/26 23:03:48 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let water = new Water.water in
	let carbon_dioxyde = new Carbondioxyde.carbondioxyde in
	let ozone = new Ozone.ozone in
	let trinitrotoluene = new Trinitrotoluene.trinitrotoluene in
	let glucose = new Glucose.glucose in
	let glycerol = new Glycerol.glycerol in	
	print_endline water#to_string;
	print_endline carbon_dioxyde#to_string;
	print_endline ozone#to_string;
	print_endline trinitrotoluene#to_string;
	print_endline glucose#to_string;
	print_endline glycerol#to_string