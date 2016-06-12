(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   nucleotides.ml                                     :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/17 22:50:35 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/17 22:50:39 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type nucleobase = A | T | C | G | None

type nucleotide = {
	phosphate : string;
	deoxyribose : string;
	nucleobase : nucleobase;
}

let generate_nucleotide c = {
	phosphate = "phosphate";
	deoxyribose = "deoxyribose";
	nucleobase = match c with
	| 'A' -> A;
	| 'T' -> T;
	| 'C' -> C;
	| 'G' -> G;
	| _ -> None
}

let () =
	let display n =
		let ncltd = generate_nucleotide n in
		print_endline (ncltd.phosphate);
		print_endline (ncltd.deoxyribose);
		print_endline (match ncltd.nucleobase with
	        | A -> "A"
	        | T -> "T"
	        | C -> "C"
	        | G -> "G"
	        | None -> "None")
    in
    display 'T';
    display 'T';
    display 'A';
    display 'G';
