(* REVERSE A LIST *)
let rec rev list acc = match list with
| [] -> acc 
| h :: t -> rev t (h :: acc);;


(* TAIL OF A LIST *)
let rec tail list = match list with
| [] -> None
| [x] -> Some x
| _ :: t -> tail t;;




