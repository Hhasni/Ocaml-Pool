(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 22:54:39 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/25 22:54:41 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let p1 = new People.people "people" in
    print_endline p1#to_string;
    p1#talk;
    p1#die;
    let doc = new Doctor.doctor "BugsBunny" 15 p1 in
    print_endline doc#to_string;
    doc#talk;
    let newdoc = doc#travel_in_time 17 32 in
    print_endline newdoc#to_string;
    newdoc#talk;
    newdoc#use_sonic_screwdriver