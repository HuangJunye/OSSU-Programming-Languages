use "assignment1_submission.sml";
(* problem 1 *)

val older_date = (1992,10,21)
val newer_date = (1993,12,25)

val test_is_older_with_correct_order = is_older(older_date, newer_date) = true
val test_is_older_with_incorrect_order = is_older(newer_date, older_date) =
  false
val test_is_older_with_same_date = is_older(older_date, older_date) = false
