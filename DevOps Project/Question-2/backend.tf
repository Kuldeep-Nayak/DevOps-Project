terraform {
    backend "s3" {
        bucket  =   "terraform-bucket-myproject"
        key =   "terraform.tfstate"
        region  =   "us-east-1"
        dynamodb_table  =   "terraform-lock-table"
    }
}