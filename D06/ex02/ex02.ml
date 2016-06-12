(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex02.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/24 22:03:25 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/24 22:03:27 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module type PAIR = sig val pair : (int * int) end
module type VAL = sig val x : int end

module type MAKEPROJECTION =
	functor (Pair: PAIR) -> VAL

module MakeFst : MAKEPROJECTION =
	functor (Pair : PAIR) ->
		struct
			let ret (f, _) = f
			let x = ret Pair.pair
		end

module MakeSnd : MAKEPROJECTION =
	functor (Pair : PAIR) ->
		struct
			let ret (_, l) = l
			let x = ret Pair.pair
		end

module Pair : PAIR = struct let pair = ( 21, 42 ) end
module Fst : VAL = MakeFst (Pair)
module Snd : VAL = MakeSnd (Pair)

let () = Printf.printf "Fst.x = %d, Snd.x = %d\n" Fst.x Snd.x