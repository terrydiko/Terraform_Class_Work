variable "ami_id" {
  type = map(string) # some cases you may see "map"  OR  map(any) - all are the same
  default = {
    "prd" = "ami-0c2b8ca1dad447f8a" #"key" = "value"
    "stg" = "ami-0c2b8ca1dad447f8a"
    "dev" = "ami-0ec1545979d0dc885" # us-east-1 Rocky 8 Linux
  }

}
variable "region" {
  type    = string
  default = "us-east-1"


}

variable "type_instance" {
  type = map(string)
  default = {
    "prd" = "t3.medium"
    "stg" = "t2.micro"
    "dev" = "t2.micro"
  }

}

variable "terraform_Env" {
  type = string

}
variable "mandatory_tags" {
  type = map(map(string))
  default = {
    "prd" = {
      "Env" = "prd"
    }
    "stg" = {
      "Env" = "stg"
    }
    "dev" = {
      "Env" = "dev"
    }
  }
}
