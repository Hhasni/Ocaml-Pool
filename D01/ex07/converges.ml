(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   converges.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 21:17:01 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/16 21:17:10 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec converges f x n =
	if (n < 0) then false
	else if (f (x) = x) then true
	else converges f (f x) (n-1)

let main () =
	print_endline "Example tests:";
	print_endline (string_of_bool( converges (( * ) 2) 2 5));
	print_endline (string_of_bool( converges (fun x -> x / 2) 2 3));
	print_endline (string_of_bool( converges (fun x -> x / 2) 2 2));
	print_endline "\nMy tests:";
	print_endline (string_of_bool( converges (fun x -> x / 2) 2 (-1)));
	print_endline (string_of_bool( converges (fun x -> x + 1) 2 5));
	print_endline (string_of_bool( converges (fun x -> x) 42 0));
	print_endline (string_of_bool( converges (fun x -> 1) 0 1));
	print_endline (string_of_bool( converges (fun x -> x / 2) (-22) 2))

let () = main ()