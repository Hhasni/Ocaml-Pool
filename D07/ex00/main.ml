(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 22:54:10 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/25 22:54:12 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let pp = new People.people("hhasni") in
	pp#talk;
	print_endline pp#to_string;
	pp#die