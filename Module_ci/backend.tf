terraform {
  backend "s3" {
    bucket         = "mybackup20062025"
    region         = "ap-northeast-1"
    dynamodb_table = "myDynamo20062025"
    encrypt        = true
  }
}