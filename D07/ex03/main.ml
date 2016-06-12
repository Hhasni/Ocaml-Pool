(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 22:56:43 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/25 22:56:45 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec display_army l = match l with
    | head::tail -> print_endline(head#to_string); display_army tail
    | [] -> ()

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
    dalek#die;
    print_endline "__________ARMY___________";
    print_endline "--People :";
    let armyp = new Army.army (new People.people "people1"::new People.people "people2"::[]) in
    display_army armyp#get_lst;
    print_endline "\t ADDING";
    ignore (armyp#add (new People.people "people3"));
    display_army armyp#get_lst;
    ignore (armyp#delete );
    print_endline "\tDELETING";
    display_army armyp#get_lst;
    print_endline "\n--Doctor :";
    let armydoc = new Army.army (new Doctor.doctor "Doctor1" 15 p1 ::new Doctor.doctor "Doctor2" 35 p1 ::[]) in
    display_army armydoc#get_lst;
    print_endline "\t ADDING";
    ignore (armydoc#add (new Doctor.doctor "Doctor3" 15 p1 ));
    display_army armydoc#get_lst;
    ignore (armydoc#delete );
    print_endline "\tDELETING";
    display_army armydoc#get_lst;
    print_endline "\n--Dalek :";
    let armydal = new Army.army (new Dalek.dalek ::new Dalek.dalek ::[]) in
    display_army armydal#get_lst;
    print_endline "\t ADDING";
    ignore (armydal#add (new Dalek.dalek));
    display_army armydal#get_lst;
    ignore (armydal#delete );
    print_endline "\tDELETING";
    display_army armydal#get_lst
