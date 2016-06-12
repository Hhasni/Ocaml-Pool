(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   hofstadter_mf.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: hhasni <hhasni@student.42.fr>              +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 21:16:13 by hhasni            #+#    #+#             *)
(*   Updated: 2015/06/16 21:16:19 by hhasni           ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec hfs_f n =
	if (n = 0) then 1
	else if (n > 0) then (n - hfs_m( hfs_f (n-1)))
	else -1

and hfs_m n =
	if (n = 0) then 0
	else if (n > 0) then (n - hfs_f( hfs_m (n-1)))
	else -1

let main () =
	print_endline "Example tests:";
	print_int(hfs_m 0);
	print_char ('\n');
	print_int(hfs_f 0);
	print_char ('\n');
	print_int(hfs_m 4);
	print_char ('\n');
	print_int(hfs_f 4);
	print_char ('\n');
	print_endline "\nMy tests:";
	print_int(hfs_m 126);
	print_char ('\n');
	print_int(hfs_f 126);
	print_char ('\n');
	print_int(hfs_m 6);
	print_char ('\n');
	print_int(hfs_m (-1));
	print_char ('\n');
	print_int(hfs_f (-1));
	print_char ('\n');
	print_int(hfs_f 6);
	print_char ('\n')

let () = main ()