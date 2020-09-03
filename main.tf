resource "aws_iam_policy" "pscloud-policy" {
  name        = "${var.pscloud_company}_iam_policy_${var.pscloud_env}_${var.pscloud_policy_name}"
  description = "PSCLOUD policy"

  policy = var.pscloud_policy
}

resource "aws_iam_policy_attachment" "pscloud-policy-attach" {
  count      = var.pscloud_attach ? 1 : 0

  name       = "${var.pscloud_company}_iam_policy_attachment_${var.pscloud_env}_${var.pscloud_policy_name}"
  users      = var.pscloud_attach_users
  roles      = var.pscloud_attach_roles
  groups     = var.pscloud_attach_groups
  policy_arn = aws_iam_policy.pscloud-policy.arn
}