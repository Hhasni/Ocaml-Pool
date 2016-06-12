(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/23 22:46:46 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/23 22:46:48 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let jokes () =
	let a = Array.make 5 ""
	in
	Array.set a 0 "What is invisible and smells like carrots?\nRabbit farts";
	Array.set a 1 "How many lives does a Nazi cat have?\nNien!";
	Array.set a 2 "How do you make a clown cry?\nkill his family";
	Array.set a 3 "How do you get a nun pregnant?\nHave sex with her!";
	Array.set a 4 "-Knock knock.\n-Who's there?\n-Ya.\n-Ya who?\n-Sorry, I prefer Google.";
	Array.get a (Random.int 5)

let () =
	Random.self_init();
	print_endline (jokes ())