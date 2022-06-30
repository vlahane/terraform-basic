
variable "listOfStrings" {
  type    = list(string)
  default = ["Vishal", "John", "Ned", "Vishal"]
}

variable "listOfStringsHasVishal" {
  type    = list(string)
  default = ["Vishal", "John", "Ned", "Vishal"]
  validation {
    condition     = contains(var.listOfStringsHasVishal, "404")
    error_message = "Vishal not found"
  }
}

/*
 Error: Invalid value for variable
│
│   on main.tf line 7:
│    7: variable "listOfStringsHasVishal" {
│     ├────────────────
│     │ var.listOfStringsHasVishal is list of string with 4 elements
│
│ Vishal not found
│
│ This was checked by the validation rule at main.tf:10,3-13.
╵
*/


locals {
  set = toset(var.listOfStrings)
  /*
> local.set
toset([
  "John",
  "Ned",
  "Vishal",
])
*/

}

