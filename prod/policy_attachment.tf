resource "aws_iam_role_policy_attachment" "DevopsTestIAM-policy-attachment" {
  role = aws_iam_role.DevopsTestIAMRole.name
  policy_arn = aws_iam_policy.DevopsTestIAMPolicy.arn
}
