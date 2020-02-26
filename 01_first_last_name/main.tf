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

resource "null_resource" "first_name" {
  provisioner "local-exec" {
    command = "echo ${var.first_names[0]}"
  }
}

resource "null_resource" "middle_initial" {
  provisioner "local-exec" {
    command = "echo ${var.middle_initials[0]}"
  }
}

resource "null_resource" "last_name" {
  provisioner "local-exec" {
    command = "echo ${var.last_names[0]}"
  }
}
