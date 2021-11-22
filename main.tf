resource "aws_iam_policy" "s3-rds-full-access" {
     name   = "S3andRDSFullAccess"
     path   = "/"
     policy = jsonencode(
          {
             Statement = [
                 {
                     Action   = [
                          "s3:*",
                          "rds:*"
                        ],
                     Effect   = "Allow"
                     Resource = "*"
                  },
              ]
             Version   = "2012-10-17"
          }
    )
}

resource "aws_iam_role" "my-iam-role" {
     name = "my-iam-role"     
     assume_role_policy = "${file("assumerolepolicy.json")}"
}

resource "aws_iam_policy_attachment" "policy-attach" {
  name       = "policy-attachment"
  roles      = ["${aws_iam_role.my-iam-role.name}"]
  policy_arn = "${aws_iam_policy.s3-rds-full-access.arn}"
}

#resource "aws_quicksight_data_source" "quicksight_ds" {
#  data_source_id = "example-id"
#  name           = "quicksight_s3"
#
#  parameters {
#    s3 {
#      manifest_file_location {
#        bucket = "bucketname"
#        key    = "path/to/manifest.json"
#      }
#    }
#  }
#
#  type = "S3"
#}
