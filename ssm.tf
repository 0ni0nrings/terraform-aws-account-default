resource aws_ssm_parameter "account" {
  name  = "/account/${var.ssm_name != "" ? var.ssm_name : var.name}/id"
  type  = "String"
  value = aws_organizations_account.account.id
}

resource aws_ssm_parameter "email" {
  name  = "/account/${var.ssm_name != "" ? var.ssm_name : var.name}/email"
  type  = "String"
  value = var.email
}
