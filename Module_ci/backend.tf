terraform {
  backend "s3" {
    bucket         = "mybackup20062025"
    region         = "ap-northeast-1"
    encrypt        = true
    key  =  "terraform.tfstate"
  }
}
