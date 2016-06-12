(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/20 22:13:37 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/20 22:13:39 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec print_list lst = match lst with
	| [] -> ()
	| head::tail -> print_string ((Color.toString head ^ " "));
					print_endline (Color.toStringVerbose head);
					print_list tail


let main () =
	print_list Color.all

let () =
	main ()
