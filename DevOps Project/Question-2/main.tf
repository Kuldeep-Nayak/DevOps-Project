resource "aws_s3_bucket" "terraform_state_bucket" {
    bucket = "terraform-bucket-myproject"

    versioning {
        enabled = true
    }

    tags = {
        Name = "TerraformStateBucket"
    }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
    name = "terraform-lock-table"
    billing mode = "PAY_PER_REQUEST"

    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }

    tags = {
        Name = "TerraformStateLockTable"
    }
}