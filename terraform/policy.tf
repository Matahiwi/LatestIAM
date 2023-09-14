resource "aws_iam_policy" "DevopsTestIAMPolicy" {
#  count = var.environment == "prod-us" ? 1 : 0
  name        = "HarriettTerraformBucketAccessPolicy"
  path        = "/"
  description = "Allow s3 bucket access to harriett789"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "ListObjectsInBucket",
        "Effect" : "Allow",
        "Action" : ["s3:ListBucket"],
        "Resource" : ["arn:aws:s3:::harriett789"]
      },
      {
        "Sid" : "AllObjectActions",
        "Effect" : "Allow",
        "Action" : "s3:*Object",
        "Resource" : ["arn:aws:s3:::harriett789/*"]
      }
    ]
  })
}
