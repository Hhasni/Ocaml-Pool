(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   galifrey.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 22:57:23 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/25 22:57:24 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class galifrey =
	object(self)
		val daleks = (new Army.army (new Dalek.dalek::new Dalek.dalek::[]))
		val doctors = (new Army.army (new Doctor.doctor "Doctor1" 15 (new People.people "people1") ::new Doctor.doctor "Doctor2" 35 (new People.people "people2") ::[]))
		val peoples = (new Army.army (new People.people "people1"::new People.people "people2"::[]))

		method do_time_war =
			Random.self_init ();
			let p = new People.people "p1" in
			p#talk;
			print_endline ("Whiiii... " ^ (p#to_string));
			print_endline "Now die";
			let d = new Doctor.doctor "Doctor1" 15 p in
			d#talk;
			print_endline (d#to_string);
			print_endline ((d#travel_in_time 666 2014)#to_string);
	(* 		d#test_regen;
	 *)		d#use_sonic_screwdriver;
			print_endline "Dalek";
			let dalek = new Dalek.dalek in
			dalek#talk;
			print_endline (dalek#to_string);
			p#talk;
			dalek#exterminate p;
			print_endline (dalek#to_string);
			dalek#exterminate p;
			dalek#talk;
			d#use_sonic_screwdriver;
			dalek#die;

			peoples#add (new People.people "people10");
			peoples#add (new People.people "people11");
			peoples#add (new People.people "people12");
			peoples#add (new People.people "people13");
 			peoples#display_army;

			doctors#add (new Doctor.doctor "Doctor10" 5 (new People.people "sidekick1"));
			doctors#add (new Doctor.doctor "Doctor11" 10 (new People.people "sidekick2"));
			doctors#add (new Doctor.doctor "Doctor12" 15 (new People.people "sidekick3"));
			doctors#add (new Doctor.doctor "Doctor13" 20 (new People.people "sidekick4"));
 			doctors#display_army;

 			daleks#add (new Dalek.dalek);
			daleks#add (new Dalek.dalek);
			daleks#add (new Dalek.dalek);
			daleks#add (new Dalek.dalek);
 			daleks#display_army;

end