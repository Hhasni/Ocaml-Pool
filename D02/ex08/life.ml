(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   life.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/17 22:51:18 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/17 22:51:21 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type nucleobase = A | T | C | G | U | None

type aminoacid = Stop | Ala | Arg | Asn | Asp | Cys |
				  Gln | Glu | Gly | His | Ile | Leu |
				  Lys | Met | Phe | Pro | Ser | Thr |
				  Trp | Tyr | Val 

type nucleotide = {
	phosphate : string;
	deoxyribose : string;
	nucleobase : nucleobase;
}

type helix = nucleotide list

type rna = nucleobase list

type protein = aminoacid list

type string_opt = Some of string | None

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
	 Random.self_init();
	let rec loop n helix =
		if (n > 0) then loop (n - 1 ) (helix @ [generate_nucleotide (
			match Random.int 4 with
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

let generate_bases_triplets rna =
	let rec loop rna trp =  match rna with
		| head::elem1::elem2::tail -> loop tail (trp @ ([head, elem1, elem2]))
		| head::tail -> loop tail trp
		| [] ->  trp
	in loop rna []

let decode_arn rna =
	let rec loop rna = match rna with
		| [] -> []
		| (U,A,A)::tail | (U,A,G)::tail | (U,G,A)::tail ->  []
		| (G,C,A)::tail | (G,C,C)::tail | (G,C,G)::tail | (G,C,U)::tail -> Ala :: loop tail
		| (A,G,A)::tail | (A,G,G)::tail | (C,G,A)::tail | (C,G,C)::tail | (C,G,G)::tail | (C,G,U)::tail -> Arg :: loop tail
		| (A,A,C)::tail | (A,A,U)::tail -> Asn :: loop tail
		| (G,A,C)::tail | (G,A,U)::tail -> Asp :: loop tail
		| (U,G,C)::tail | (U,G,U)::tail -> Cys :: loop tail
		| (C,A,A)::tail | (C,A,G)::tail -> Gln :: loop tail
		| (G,A,A)::tail | (G,A,G)::tail -> Glu :: loop tail
		| (G,G,A)::tail | (G,G,C)::tail | (G,G,G)::tail | (G,G,U)::tail -> Gly :: loop tail
		| (C,A,C)::tail | (C,A,U)::tail -> His :: loop tail
		| (A,U,A)::tail | (A,U,C)::tail | (A,U,U)::tail -> Ile :: loop tail
		| (C,U,A)::tail | (C,U,C)::tail | (C,U,G)::tail | (C,U,U)::tail | (U,U,A)::tail | (U,U,G)::tail -> Leu :: loop tail
		| (A,A,A)::tail | (A,A,G)::tail -> Lys :: loop tail
		| (A,U,G)::tail -> Met :: loop tail
		| (U,U,C)::tail | (U,U,U)::tail -> Phe :: loop tail
		| (C,C,C)::tail | (C,C,A)::tail | (C,C,G)::tail | (C,C,U)::tail -> Pro :: loop tail
		| (U,C,A)::tail | (U,C,C)::tail | (U,C,G)::tail | (U,C,U)::tail -> Ser :: loop tail
		| (A,C,A)::tail | (A,C,C)::tail | (A,C,G)::tail | (A,C,U)::tail -> Thr :: loop tail
		| (U,G,G)::tail -> Trp :: loop tail
		| (U,A,C)::tail | (U,A,U)::tail -> Tyr :: loop tail
		| (G,U,A)::tail | (G,U,C)::tail | (G,U,G)::tail | (G,U,U)::tail -> Val :: loop tail
		| _ -> []
	in
	loop (generate_bases_triplets rna)

let rec protein_to_string alst = match alst with
		| [] -> ""
		| head::tail -> (match head with
			| Stop -> ""
			| Ala -> "Alanine "
			| Arg -> "Arginine "
			| Asn -> "Asparagine "
			| Asp -> "Aspartique "
			| Cys -> "Cysteine "
			| Gln -> "Glutamine "
			| Glu -> "Glutamique "
			| Gly -> "Glycine "
			| His -> "Histidine "
			| Ile -> "Isoleucine "
			| Leu -> "Leucine "
			| Lys -> "Lysine "
			| Met -> "Methionine "
			| Phe -> "Phenylalanine "
			| Pro -> "Proline "
			| Ser -> "Serine "
			| Thr -> "Threonine "
			| Trp -> "Typtophane "
			| Tyr -> "Tyrosine "
			| Val -> "Valine ") ^ protein_to_string tail

let rec helix_to_string hlst = match hlst with
	| [] -> ""
	| head::tail -> (match head.nucleobase with
        | A -> "A"
        | T -> "T"
        | C -> "C"
        | G -> "G"
        | None -> "None"
    	| U -> "U") ^ helix_to_string tail

let rec rna_to_string rna = match rna with
    | [] -> ""
    | head::tail -> (match head with
        | A -> "A"
        | U -> "U"
        | T -> "T"
        | C -> "C"
        | G -> "G"
        | None -> "None") ^ rna_to_string tail

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

let life str =
	let h1 = generate_helix 12
	in
	let h2 = complementary_helix h1;
	in
	let rna1 = generate_rna h1;
	in
	let rna2 = generate_rna h2;
	in
	print_endline(str);
	print_string("ADN L: ");print_endline (helix_to_string h1);
	print_string("ADN R: ");print_endline (helix_to_string h2);
	print_char('\n');	
	print_string("RNA L: ");print_endline(rna_to_string rna1);
	print_string("RNA R: ");print_endline(rna_to_string rna2);
	print_char('\n');	
	print_string("ARN L: ");print_endline(protein_to_string(decode_arn(rna1)));
	print_string("ARN R: ");print_endline(protein_to_string(decode_arn(rna2)))

let () = 
	life "Demo"