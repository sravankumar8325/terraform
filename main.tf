resource "aws_quicksight_data_source" "quicksight_ds" {
  data_source_id = "example-id"
  name           = "quicksight_s3"

  parameters {
    s3 {
      manifest_file_location {
        bucket = "bucketname"
        key    = "path/to/manifest.json"
      }
    }
  }

  type = "S3"
}
