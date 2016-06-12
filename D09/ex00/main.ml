(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/27 22:34:14 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/27 22:34:17 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () = 
    let clock = Watchtower.Watchtower.zero in
    print_endline (string_of_int clock);
    print_endline (string_of_int (Watchtower.Watchtower.add clock (0:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.add clock (1:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.add clock (12:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.add clock (13:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.add clock (14:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.add clock (24:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.add clock (39:Watchtower.Watchtower.hour)));
    print_endline "";
    print_endline (string_of_int (Watchtower.Watchtower.sub clock (0:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.sub clock (1:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.sub clock (12:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.sub clock (13:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.sub clock (14:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.sub clock (24:Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.sub clock (39:Watchtower.Watchtower.hour)));
    print_endline "";
    print_endline (string_of_int (Watchtower.Watchtower.sub clock ((-42):Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.add clock ((-1):Watchtower.Watchtower.hour)));
    print_endline (string_of_int (Watchtower.Watchtower.add clock ((-0):Watchtower.Watchtower.hour)));
