(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/20 22:14:23 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/20 22:14:26 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec print_lst lst = match lst with
	| [] -> print_char ('\n')
	| head::tail -> print_endline (head); print_lst tail

let rec draw_all lst =
	let (x, y) = (Deck.drawCard lst) in
	print_endline ((Deck.Card.toString x) ^ " 	- 	" ^ (Deck.Card.Value.toStringVerbose (Deck.Card.getValue x)) ^ " 	- 	" ^ (Deck.Card.Color.toStringVerbose (Deck.Card.getColor x)));
	draw_all y

let main () =
	Random.self_init ();
	let deck1 = Deck.newDeck () in
	print_endline "First deck print normal :";
	print_lst (Deck.toStringList deck1);
	print_endline "First deck print verbose :";
	print_lst (Deck.toStringListVerbose deck1);
	let deck2 = Deck.newDeck () in
	print_endline "Second deck print verbose :";
	print_lst (Deck.toStringListVerbose deck2);
	print_endline "print all :";
	try
		draw_all deck1
	with 
		Failure e -> print_endline ("Exception catch : " ^ e)

let () = main ()