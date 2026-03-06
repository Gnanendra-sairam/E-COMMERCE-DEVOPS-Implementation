resource "aws_s3_bucket" "example" {
  bucket = var.s3_name
  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_dynamodb_table" "example" {
  name         = var.dynamodb_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}