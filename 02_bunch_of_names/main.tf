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

resource "null_resource" "first_name_0" {
  provisioner "local-exec" {
    command = "echo ${var.first_names[0]}"
  }
}

resource "null_resource" "middle_initial_0" {
  provisioner "local-exec" {
    command = "echo ${var.middle_initials[0]}"
  }
}

resource "null_resource" "last_name_0" {
  provisioner "local-exec" {
    command = "echo ${var.last_names[0]}"
  }
}

resource "null_resource" "first_name_1" {
  provisioner "local-exec" {
    command = "echo ${var.first_names[1]}"
  }
}

resource "null_resource" "middle_initial_1" {
  provisioner "local-exec" {
    command = "echo ${var.middle_initials[1]}"
  }
}

resource "null_resource" "last_name_1" {
  provisioner "local-exec" {
    command = "echo ${var.last_names[1]}"
  }
}

resource "null_resource" "first_name_2" {
  provisioner "local-exec" {
    command = "echo ${var.first_names[2]}"
  }
}

resource "null_resource" "middle_initial_2" {
  provisioner "local-exec" {
    command = "echo ${var.middle_initials[2]}"
  }
}

resource "null_resource" "last_name_2" {
  provisioner "local-exec" {
    command = "echo ${var.last_names[2]}"
  }
}

resource "null_resource" "first_name_3" {
  provisioner "local-exec" {
    command = "echo ${var.first_names[3]}"
  }
}

resource "null_resource" "middle_initial_3" {
  provisioner "local-exec" {
    command = "echo ${var.middle_initials[3]}"
  }
}

resource "null_resource" "last_name_3" {
  provisioner "local-exec" {
    command = "echo ${var.last_names[3]}"
  }
}
