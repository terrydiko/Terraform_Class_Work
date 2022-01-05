variable "ami_id" {
    type = map(string)
    default = {
        "prod" = "ami-0ed9277fb7eb570c9"
        "stag" = "ami-002068ed284fb165b"
        "dev" = "ami-03af6a70ccd8cb578"
    }
}
 variable "region" {
     type = map(string)
     default = {
        "prod" = "us-east-1"
        "stag" = "us-east-2"
        "dev" = "us-west-1"
    }
 }

 variable "type_instance" {
     type = map(string)
     default = {
       "prod" = "t3.medium"
       "stag" = "t2.medium"
       "dev" = "t3.nano"
     }
 }

 variable "terraform_Env" {
     type = string
 }

variable "mandatory_tags" {
    type = map(map(string))
    default = {
      "prod" = {
        "Env" = "prod"
        },
      "stag" = {
        "Env" = "stag"
        },
      "dev" = {
        "Env" = "dev"
        }


    }

}
