resource "aws_ssm_parameter" "parameter" {
  name  = "test.test1"
  value = "Hello World"
  type  = "SecureString"
  key_id = "021bd554-916f-454d-8d02-b25b0c244bdd"
}