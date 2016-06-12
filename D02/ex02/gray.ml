(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   gray.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/17 22:50:11 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/17 22:50:16 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec concat lst1 lst2 = match lst1 with
	| [] -> lst2
	| head::tail -> head :: (concat tail lst2)

let rec list_reverse l lst = match l with
	| [] -> lst
	| head::tail -> list_reverse tail (head::lst)

let rec creat_list_base c x = match x with
	| [] -> []
	| head::tail -> (c ^ head) :: creat_list_base c tail

let rec creat_main_list x n = match n with
	| 0 -> x
	| _ -> creat_main_list (concat (creat_list_base "0" x ) (creat_list_base "1" (list_reverse x []))) (n - 1)

let rec display value = match value with
	| [] -> ()
	| head::elem::tail -> print_string head; print_string " "; display(elem::tail)
	| head::tail -> print_string head; display(tail)

let rec gray n =
	if (n > 0) then display(creat_main_list["0";"1"] (n - 1));
	print_char ('\n')

let () =
	gray 0;
	gray 1;
	gray 2;
	gray 3;
	gray 4;	
	gray (-1);
	gray 5;