(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/27 22:39:51 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/27 22:39:54 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let test opt = match opt with
	        | Try.Try.Success (x)   -> print_endline "OK this is a Success"
	        | Try.Try.Failure (x)   -> print_endline (Printexc.to_string x)
	in
   	let t1 = Try.Try.return 0 in
   	let t2 = Try.Try.filter t1 (fun c -> false) in
   	let t3 = Try.Try.bind t1 (fun c -> Try.Try.return (Try.Try.filter (Try.Try.return (c + 1)) (fun c -> false))) in
   	test t1;
   	test t2;
   	test t3;
   	print_endline "____________________";
   	test (Try.Try.return 1);
   	test (Try.Try.recover t2 (fun ex -> Try.Try.Failure (Invalid_argument "test exception")));
   	test (Try.Try.flatten t3)

