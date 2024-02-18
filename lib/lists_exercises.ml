(* REVERSE A LIST *)
(* https://ocaml.org/exercises?difficulty_level=beginner#5 *)
let rec rev list acc = match list with
| [] -> acc
| h :: t -> rev t (h :: acc);;


(* TAIL OF A LIST *)
(* https://ocaml.org/exercises?difficulty_level=beginner#1 *)
let rec tail list = match list with
| [] -> None
| [x] -> Some x
| _ :: t -> tail t;;

(* Run-Length Encoding *)
(* https://ocaml.org/exercises?difficulty_level=beginner#10 *)
let rle list =
    let rec aux count acc output = match output with
        | [] -> []
        | [x] -> (count+1, x) :: acc
        | a :: (b :: _ as t) -> if a = b then aux (count + 1) acc t
                                else aux 0 ((count + 1, a) :: acc) t in
    rev (aux 0 [] list) [];;

(* Remove the K'th Element From a List *)
(* https://ocaml.org/exercises?difficulty_level=beginner#20 *)
let rec remove_kth k list = match list with
    | [] -> []
    | h :: t -> if k = 0 then t else h :: remove_kth (k - 1) t




