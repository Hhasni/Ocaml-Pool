(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_countdown.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 22:30:13 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/15 22:30:20 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ft_countdown nb =
	if nb <= 0
	then print_endline("0")
	else
	    begin
	     	print_int(nb);
	    	print_char('\n'); 	
	     	ft_countdown (nb-1)
	     end

let main() =
	ft_countdown 5;
	print_char('\n');
	ft_countdown 0;
	print_char('\n');
	ft_countdown (-1);
	print_char('\n')

let () = main()