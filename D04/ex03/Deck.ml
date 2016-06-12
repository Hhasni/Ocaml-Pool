(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Deck.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/20 22:14:16 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/20 22:14:19 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module Card = struct
	module Color = struct
		type t = Spade | Heart | Diamond | Club

		let all =
			Spade::Heart::Diamond::Club::[]

		let toString t = match t with
			| Spade -> "S"
			| Heart -> "H"
			| Diamond -> "D"
			| Club -> "C"

		let toStringVerbose t = match t with
			| Spade -> "Spade"
			| Heart -> "Heart"
			| Diamond -> "Diamond"
			| Club -> "Club"
	end

	module Value = struct
		type t = T2 | T3 | T4 | T5 | T6 | T7 | T8 | T9 | T10 | Jack | Queen | King | As

		let all =
			T2::T3::T4::T5::T6::T7::T8::T9::T10::Jack::Queen::King::As::[]

		let one =
			T2::[]

		let toInt t = match t with
			| T2 -> 1
			| T3 -> 2
			| T4 -> 3
			| T5 -> 4
			| T6 -> 5
			| T7 -> 6
			| T8 -> 7
			| T9 -> 8
			| T10 -> 9
			| Jack -> 10
			| Queen -> 11
			| King -> 12
			| As -> 13

		let toString t = match t with
			| T2 -> "2"
			| T3 -> "3"
			| T4 -> "4"
			| T5 -> "5"
			| T6 -> "6"
			| T7 -> "7"
			| T8 -> "8"
			| T9 -> "9"
			| T10 -> "10"
			| Jack -> "J"
			| Queen -> "Q"
			| King -> "K"
			| As -> "A"

		let toStringVerbose t = match t with
			| T2 -> "2"
			| T3 -> "3"
			| T4 -> "4"
			| T5 -> "5"
			| T6 -> "6"
			| T7 -> "7"
			| T8 -> "8"
			| T9 -> "9"
			| T10 -> "10"
			| Jack -> "Jack"
			| Queen -> "Queen"
			| King -> "King"
			| As -> "As"

		let next t = match t with
			| T2 -> T3
			| T3 -> T4
			| T4 -> T5
			| T5 -> T6
			| T6 -> T7
			| T7 -> T8
			| T8 -> T9
			| T9 -> T10
			| T10 -> Jack
			| Jack -> Queen
			| Queen -> King
			| King -> As
			| As -> invalid_arg "NO NEXT"

		let previous t = match t with
			| T2 -> invalid_arg "NO PREVIOUS"
			| T3 -> T2
			| T4 -> T3
			| T5 -> T4
			| T6 -> T5
			| T7 -> T6
			| T8 -> T7
			| T9 -> T8
			| T10 -> T9
			| Jack -> T10
			| Queen -> Jack
			| King -> Queen
			| As -> King
	end

	type t = { value: Value.t; color: Color.t }

	let newCard x y =
		{value = x; color = y}

	let allSpades =
		let rec loop acc = match acc with
			| [] -> []
			| head::tail -> newCard head Color.Spade :: loop tail 
		in loop Value.all

	let allHearts =
		let rec loop acc = match acc with
			| [] -> []
			| head::tail -> newCard head Color.Heart :: loop tail 
		in loop Value.all

	let allDiamonds =
		let rec loop acc = match acc with
			| [] -> []
			| head::tail -> newCard head Color.Diamond :: loop tail 
		in loop Value.all

	let allClubs =
		let rec loop acc = match acc with
			| [] -> []
			| head::tail -> newCard head Color.Club :: loop tail 
		in loop Value.all

	let all =
		allSpades @ allHearts @ allClubs @ allDiamonds 

	let getValue t = 
		t.value

	let getColor t =
		t.color	

	let toString t =
		(Value.toString t.value) ^ (Color.toString t.color)

	let toStringVerbose t =
		("Card(" ^ (Value.toString t.value) ^ ", " ^ (Color.toString t.color) ^ ")")

	let max t1 t2 =
		if (Value.toInt t1.value < Value.toInt t2.value) then t2
		else t1

	let min t1 t2 =
		if (Value.toInt t1.value > Value.toInt t2.value) then t1
		else t2

	let compare t1 t2 =
		if t1.value = t2.value then 0
		else if (max t1 t2) = t1 then 1
		else -1

	let best tlst = match tlst with
		| [] -> invalid_arg "Empty list"
		| head::_ -> List.fold_left max head tlst

	let isOf t c =
		if (t.color = c) then true
		else false

	let isSpade t =
		isOf t Color.Spade

	let isHeart t =
		isOf t Color.Heart

	let isDiamond t =
		isOf t Color.Diamond

	let isClub t =
		isOf t Color.Club
end

type t = Card.t list

let newDeck () =
	let randList = List.map (fun card -> (Random.bits(), card)) Card.all
	in
    let sortedRandList = List.sort compare randList
	in
    List.map snd sortedRandList

let rec toStringList t = match t with
	| [] -> []
	| head::tail -> (Card.toString head) :: toStringList tail

let rec toStringListVerbose t = match t with
	| [] -> []
	| head::tail -> (Card.toStringVerbose head) :: toStringListVerbose tail

let drawCard t = match t with
	| [] -> raise (Failure ("Empty Deck"))
	| head::tail -> (head, tail)
