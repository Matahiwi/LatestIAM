resource "aws_iam_role" "DevopsTestIAMRole" {
  name = "HarriettProdIAMBucketRole"
  path = "/"

  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "AWS": "arn:aws:iam::969296761654:root"
        },
        "Action": "sts:AssumeRole",
        "Condition": {
        }
      }
    ]
  })
}
