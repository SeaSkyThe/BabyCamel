(* let () = Printf.printf "%s\n" BabyCaml.En.v;; *)
(* let () = Printf.printf "%s\n" BabyCaml.Es.v;; *)



(* EXERCISES - LISTS *)
let () = Printf.printf "THOSE ARE MY LIST EXERCISES RUNNING!!! IM A GROWING CAMEL\n\n"
(* REVERSE A LIST *)
let original_list = [1; 2; 3; 4; 5]
let () = Printf.printf "1 - Reverse a list: "
let () = List.iter (Printf.printf "%d ") original_list
let () = Printf.printf "\nResult: "
let reversed_list = BabyCaml.Lists_exercises.rev original_list [];;
let () = List.iter (Printf.printf "%d ") reversed_list
let () = Printf.printf "\n\n\n"

(*  TAIL OF  LIST  *)
let () = Printf.printf "2 - Tail of a list: \n"
let () = let list = ["a"; "b"; "c"; "d"; "e"] in
match BabyCaml.Lists_exercises.tail list with
| Some result -> Printf.printf "%s\n" result
| None -> Printf.printf "Lista vazia \n"



