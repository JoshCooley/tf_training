variable "first_names" {
  type = "list"

  default = [
    "alice",
    "bob",
    "carol",
    "dan",
  ]
}

variable "middle_initials" {
  type = "list"

  default = [
    "A",
    "B",
    "C",
    "D",
  ]
}

variable "last_names" {
  type = "list"

  default = [
    "albert",
    "billings",
    "cunningham",
    "daniels",
  ]
}

module "echo_names" {
  source          = "git::https://github.com/JoshCooley/names.git//v3"
  first_names     = ["${var.first_names}"]
  middle_initials = ["${var.middle_initials}"]
  last_names      = ["${var.last_names}"]

  titles = [
    "esq.",
    "dr.",
  ]
}
