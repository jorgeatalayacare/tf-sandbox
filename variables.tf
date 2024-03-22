variable "instance_password" {
  type        = string
  description = "The password is passed in the form of an environment variable"
}

variable "dbs" {
  type = list(string)
}

variable "roles" {
  type = list(string)
}