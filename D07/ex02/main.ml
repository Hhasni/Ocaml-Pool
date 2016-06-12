(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 22:56:08 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/25 22:56:10 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let p1 = new People.people "people" in
    print_endline p1#to_string;
    p1#talk;
    p1#die;
    print_endline "___________________________";
    let doc = new Doctor.doctor "BugsBunny" 15 p1 in
    print_endline doc#to_string;
    doc#talk;
    print_endline "___________________________";
    let newdoc = doc#travel_in_time 17 32 in
    print_endline newdoc#to_string;
    newdoc#talk;
    newdoc#use_sonic_screwdriver;
    Random.self_init ();
    print_endline "___________________________";
    let dalek = new Dalek.dalek in
    print_endline (dalek#to_string);
    dalek#talk;
    dalek#exterminate p1;
    print_endline (dalek#to_string);
    dalek#exterminate p1;
    print_endline (dalek#to_string);
    dalek#die