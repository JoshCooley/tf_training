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
  source = "names"
}
