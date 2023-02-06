# terraform apply --target aws_dynamodb_table.basic-dynamodb-table
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  provider       = aws.source
  name           = "TestAWSBackup"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "UserId"
  range_key      = "Title"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "Title"
    type = "S"
  }

  tags = {
    Name        = "TestAWSBackup"
    Environment = "Dev"
  }
}
