(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   rna.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/17 22:50:58 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/17 22:51:02 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type nucleobase = A | T | C | G | U | None

type nucleotide = {
	phosphate : string;
	deoxyribose : string;
	nucleobase : nucleobase;
}

type helix = nucleotide list

type rna = nucleobase list

let generate_nucleotide c = {
	phosphate = "phosphate";
	deoxyribose = "deoxyribose";
	nucleobase = match c with
	| 'A' -> A;
	| 'T' -> T;
	| 'C' -> C;
	| 'U' -> U;
	| 'G' -> G;
	| _ -> None
}

let generate_helix n =
	let rec loop n helix =
		if (n > 0) then loop (n - 1 ) (helix @ [generate_nucleotide (
			match Random.int 5 with
				| 0 -> 'A'
				| 1 -> 'T'
				| 2 -> 'C'
				| 3 -> 'G'
				| _ -> 'X')])
		else helix 
	in
	loop n []

let generate_rna h =
	let rec loop h n = match h with
	| [] -> n
	| head::tail ->	loop tail (n @ [(generate_nucleotide (match head.nucleobase with
		| U -> 'T'
		| A -> 'U'
		| T -> 'A'
		| C -> 'G'
		| G -> 'C'
		| None -> 'X')).nucleobase])
	in loop h []

let rec helix_to_string hlst = match hlst with
	| [] -> ""
	| head::tail -> (match head.nucleobase with
	        | A -> "A"
	        | T -> "T"
	        | C -> "C"
	        | G -> "G"
	        | None -> "None"
	    	| U -> "U") ^ helix_to_string tail

let rec complementary_helix hlst =
	let rec loop hlst nlst = match hlst with
		| [] -> nlst
		| head::tail -> loop tail (nlst @ [generate_nucleotide (match head.nucleobase with
	        | A -> 'T'
	        | T -> 'A'
	        | C -> 'G'
	        | G -> 'C'
	        | None -> 'X'
	    	| U -> 'U')])
	in loop hlst []

let () =
	let lst = generate_helix 6
	in
	print_endline (helix_to_string (lst));
	print_endline (helix_to_string ( complementary_helix lst));
	

	let display rna =
		let rec loop rna = match rna with
	        | [] -> ""
	        | head::tail -> (match head with
		        | A -> "A"
		        | U -> "U"
		        | T -> "T"
		        | C -> "C"
		        | G -> "G"
		        | None -> "None") ^ loop tail
	 	in
	 	loop rna
	in
  	print_endline(display (generate_rna lst))

(*  	print_endline(display (generate_rna (generate_helix 6)))
 *)
(* 	let display n =
		let rna = generate_rna n in
			let rec loop rna = match rna with
			| [] -> ()
			| head::tail -> loop tail
	in*)



(* 	let lst = generate_helix 6
	in
	print_endline (helix_to_string (lst));
	print_endline (helix_to_string ( complementary_helix lst));
 *)	


(* 	let display n =
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
    display 'G'; *)