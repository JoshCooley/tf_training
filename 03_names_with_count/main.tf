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

resource "null_resource" "first_names" {
  count = "${length(var.first_names)}"

  provisioner "local-exec" {
    command = "echo ${var.first_names[count.index]}"
  }
}

resource "null_resource" "middle_initials" {
  count = "${length(var.middle_initials)}"

  provisioner "local-exec" {
    command = "echo ${var.middle_initials[count.index]}"
  }
}

resource "null_resource" "last_names" {
  count = "${length(var.last_names)}"

  provisioner "local-exec" {
    command = "echo ${var.last_names[count.index]}"
  }
}
