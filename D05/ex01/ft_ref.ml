(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_ref.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/23 22:46:39 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/23 22:46:41 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a ft_ref = {mutable content: 'a}

let return a =
	{content = a}

let get r =
	r.content

let set r n =
	r.content <- n

let bind r f =
	f r.content

let () =
	let test_string () =
		let dispaly_string a b =
			print_string "A = ";
			print_endline (get a);
			print_string "B = ";
			print_endline (get b)
		in
		let a = return "hello" in
		let b = return "lol" in
		dispaly_string a b;
		set a b.content;
		dispaly_string a b
	in test_string ();
	let test_int () =
		let dispaly_int a b =
			print_string "A = ";
			print_endline (string_of_int (get a));
			print_string "B = ";
			print_endline (string_of_int (get b))
		in
		let a = return 42 in
		let b = return 2 in
		dispaly_int a b;
		set a b.content;
		dispaly_int a b;
		let z = bind a (fun x -> return (x * 2)) in
		print_string "Z = ";
		print_endline (string_of_int (get z))
	in test_int ()
