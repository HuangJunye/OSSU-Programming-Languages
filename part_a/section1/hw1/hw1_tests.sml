use "assignment1_submission.sml";

(* problem 1 *)
val older_date = (1992,10,21)
val newer_date = (1993,12,25)

val test_is_older_with_correct_order =
  is_older(older_date, newer_date) = true
val test_is_older_with_incorrect_order =
  is_older(newer_date, older_date) = false
val test_is_older_with_same_date =
  is_older(older_date, older_date) = false

(* problem 2 *)
val dates = [(1992,10,21), (1993,12,25), (1996,10,6)]
val month_yes = 10
val month_no = 1

val test_number_in_month =
  number_in_month(dates, month_yes) = 2

val test_number_in_month_with_no_date_in_month =
  number_in_month(dates, month_no) = 0

val test_number_in_month_with_null_dates =
  number_in_month([], month_yes) = 0

(* problem 3 *)
val months = [10,11,12]

val test_number_in_months =
  number_in_months(dates, months) = 3

val test_number_in_months_with_no_date_in_months =
  number_in_months(dates, [1,2]) = 0

val test_number_in_months_with_null_dates =
  number_in_months([], months) = 0

(* problem 4 *)
val test_dates_in_month = 
  dates_in_month(dates, month_yes) = [(1992,10,21), (1996,10,6)]

val test_dates_in_month_with_no_date_in_month =
  dates_in_month(dates, month_no) = []

val test_dates_in_month_with_null_dates =
  dates_in_month([], month_yes) = []

(* problem 5 *)
val months_yes = [10,12]
val months_no = [1,2]
val months_yes_and_no = [1,10]

val test_dates_in_months =
  dates_in_months(dates, months_yes) = [(1992,10,21), (1993,12,25), (1996,10,6)]

val test_dates_in_months_with_no_date_in_months =
  dates_in_months(dates, months_no) = []

val test_dates_in_months_with_some_date_in_months =
  dates_in_months(dates, months_yes_and_no) = [(1992,10,21), (1996,10,6)]

val test_dates_in_months_with_null_dates =
  dates_in_months([], months_yes) = []

(* problem 6 *)
val month_list = ["January", "February", "March", "April", "May", "June", "July", 
                  "August", "September", "October", "November", "December"]

val test_get_nth =
  get_nth(month_list, 2) = "February"

(* problem 7 *)
val test_date_to_string =
  date_to_string(hd dates) = "October 21, 1992"

(* problem 8 *)
val sum = 9
val sum_equal = 10
val int_list = [0,1,2,3,4,5]

val test_number_before_reaching_sum = 
  number_before_reaching_sum(sum, int_list) = 4 

val test_number_before_reaching_sum_equal =
  number_before_reaching_sum(sum_equal, int_list) = 4 