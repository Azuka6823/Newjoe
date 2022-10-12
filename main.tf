resource "aws_s3_bucket" "joeclass_bucket" {
    bucket = "joeclass-bucket12"

    lifecycle {
      prevent_destroy = false
    }

    versioning {
      enabled = false
    }

  
}

resource "aws_dynamodb_table" "terraform_joelocks" {
    name = "terraform-state-joelock12"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
  
}

resource "aws_db_instance" "my_db_joeinstance" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
