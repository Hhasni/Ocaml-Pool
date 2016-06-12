(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/27 22:35:26 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/27 22:35:30 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let print_proj = function
	| (x,y,z) -> print_string (x ^ ", " ^ y ^ ", "); print_endline(string_of_int(z))

let () =
	let s1 = App.App.zero in
	print_string "s1			: "; print_proj s1;
	let (p1:App.App.project) = ("pr", "", 80) in
	let (p2:App.App.project) = ("oj", "", 60) in
	let (p3:App.App.project) = ("ect", "", 90) in
	print_endline "___________________";
	print_string "p1			: "; print_proj p1;
	print_string "p2			: "; print_proj p2;
	print_string "p3			: "; print_proj p3;
 	let m1 = (App.App.combine p1 p2) in
	print_string "m1 = p1+p2		: "; print_proj m1;
 	let m2 = (App.App.combine m1 p3) in
	print_string "m2 = m1+p3 		: "; print_proj m2