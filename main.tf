resource "aws_ssm_parameter" "parameters" {
  count = length(var.parameters)
  name  = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type  = "String"
  key_id = "021bd554-916f-454d-8d02-b25b0c244bdd"
  overwrite = true
}