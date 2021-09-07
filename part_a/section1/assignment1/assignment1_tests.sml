use "assignment1_submission.sml";
(* problem 1 *)

val older_date = (1992,10,21)
val newer_date = (1993,12,25)

val test_is_older_with_correct_order = is_older(older_date, newer_date) = true
val test_is_older_with_incorrect_order = is_older(newer_date, older_date) =
  false
val test_is_older_with_same_date = is_older(older_date, older_date) = false

(* problem 2 *)

val dates = [(1992,10,21), (1993,12,25), (1996,10,6)]

val test_number_in_month = number_in_month(dates, 10) = 2
val test_number_in_month_with_no_date_in_month = number_in_month(dates, 1) = 0
val test_number_in_month_with_null_dates = number_in_month([], 10) = 0

(* problem 3 *)

val months = [10,11,12]

val test_number_in_months = number_in_months(dates, months) = 3
val test_number_in_months_with_no_date_in_months = number_in_months(dates, [1,2]) = 0
val test_number_in_months_with_null_dates = number_in_months([], months) = 0

