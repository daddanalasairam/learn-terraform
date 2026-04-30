# condition ? true_val : false_val

output "test" {
  value = var.x == 2 ? "Yes, it is equal" : "No, not equal"
}
variable "x" {
  default = 2
}