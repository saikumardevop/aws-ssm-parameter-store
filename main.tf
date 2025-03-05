resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type  = "String"
  key_id = "021bd554-916f-454d-8d02-b25b0c244bdd"
}

## Passwords are not at all meant to keep inside the code at all,Here since it is a lab we are doing it to save the time.
resource "aws_ssm_parameter" "passwords" {
  count = length(var.passwords)
  name  = var.passwords[count.index].name
  value = var.passwords[count.index].value
  type  = "SecureString"
  key_id = "021bd554-916f-454d-8d02-b25b0c244bdd"
}