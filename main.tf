resource "aws_iam_policy" "s3-full-access" {
     name   = "S3FullAccess"
     path   = "/"
     policy = jsonencode(
          {
             Statement = [
                 {
                     Action   = "s3:*"
                     Effect   = "Allow"
                     Resource = "*"
                     Sid      = "S3FullAccess"
                  },
              ]
             Version   = "2012-10-17"
          }
    )
}

resource "aws_iam_role" "my-iam-role" {
     name = "iam-role"     
     assume_role_policy = "${file("assumerolepolicy.json")}"
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
