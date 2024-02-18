(* HELPERS *)
let print_tuple_list lst =
  let print_element (x, y) = Printf.printf "(%d, %s) " x y in
  List.iter print_element lst;
  Printf.printf "\n"
;;

(* EXERCISES - LISTS *)
let () = Printf.printf "THOSE ARE MY LIST EXERCISES RUNNING!!! IM A GROWING CAMEL\n\n"

(* REVERSE A LIST *)
let original_list = [ 1; 2; 3; 4; 5 ]
let () = Printf.printf "1 - Reverse a list: "
let () = List.iter (Printf.printf "%d ") original_list
let () = Printf.printf "\nResult: "
let reversed_list = BabyCaml.Lists_exercises.rev original_list []
let () = List.iter (Printf.printf "%d ") reversed_list
let () = Printf.printf "\n\n\n"

(*  TAIL OF  LIST *)
let () = Printf.printf "2 - Tail of a list: \n"

let () =
  let list = [ "a"; "b"; "c"; "d"; "e" ] in
  match BabyCaml.Lists_exercises.tail list with
  | Some result -> Printf.printf "%s\n\n" result
  | None -> Printf.printf "Lista vazia \n\n"
;;

(* Run-Length Encoding *)
let original_list =
  [ "a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e" ]
;;

let () = Printf.printf "3 - Run-Length Enconding: "
let () = List.iter (Printf.printf "%s ") original_list
let () = Printf.printf "\nResult: "
let encoded_list = BabyCaml.Lists_exercises.rle original_list
let () = print_tuple_list encoded_list

(* Remove the K'th Element From a List *)
let original_list = [ "a"; "b"; "c"; "d" ]
let () = Printf.printf "\n\n\n4 - Remove the K'th Element from a List: "
let () = List.iter (Printf.printf "%s ") original_list
let () = Printf.printf "\nResult: "
let result_list = BabyCaml.Lists_exercises.remove_kth 1 original_list
let () = List.iter (Printf.printf "%s ") result_list
let () = Printf.printf "\n\n\n"
