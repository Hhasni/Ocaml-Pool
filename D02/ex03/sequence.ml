(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   sequence.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/17 22:50:22 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/17 22:50:28 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec to_string liste = match liste with
    | [] -> ""
    | head::tail -> (string_of_int head) ^ (to_string tail)

let rec extend elem lst nb =  match lst with
    | [] -> [nb; elem]
    | head::tail -> if head = elem then extend elem tail (nb + 1) else [nb; elem] @ (extend head lst 0)

let check_list lst = match lst with
    | [] -> []
    | head::_ -> extend head lst 0

let rec loop a lst =
  if (a = 0) then
    to_string lst
  else
    loop (a - 1) (check_list lst)

let sequence n =
   if (n < 0) then ""
   else loop n [1]

let () =
	print_endline(sequence 0);
	print_endline(sequence 1);
	print_endline(sequence 2);
	print_endline(sequence 3);
	print_endline(sequence 4)
