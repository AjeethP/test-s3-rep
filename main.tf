provider "aws" {
    region = "us-east-1"
}






module "IAM" {
    source = "git::https://AjeethP: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:@github.com/AjeethP/test-module-1.git//test/3.0?ref=v10"

   role_name = "test-role-mod-1"# Name of the role
   application_id = "POC"# Application id
   environment = "POC" # environment
   assume_role_policy = {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": ["s3.amazonaws.com","batchoperations.s3.amazonaws.com"]
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
}
