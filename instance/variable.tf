variable "ami_id" {
    type = map (string)
    default = {
      "prd" = "ami-0d37e07bd4ff37148"
      "stg"  = "ami-0d37e07bd4ff37148"
       "dev" = "ami-006f8716c481e3deb" #EU-west-2 Rocky 8 Linux, a good replacement for Centos 8
    }

}
 variable "region" {
     type = string
     default = "eu-west-2"

 }

 variable "type_instance" {
     type = map (string)
     default = {
       "prd" = "t3.micro"
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
        "env" = "prd"
        "Name"="Production"
      }
      "stg" = {
          "env" = "stg"
          "Name"="Staging"
      }
      "dev" = {
          "env" = "dev"
          "Name"="Development"
      }
    }



}
