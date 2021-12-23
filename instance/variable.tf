variable "ami_id" {
    type = map(string)
    default = {
        "prd" = "ami-0c2b8ca1dad447f8a"
        "stg" = "ami-0c2b8ca1dad447f8a"
        "dev" = "ami-0ec1545979d0dc885" #us-east-1 Rocky 8 Linux
    }

}
 variable "region" {
     type = string
     default = "us-east-1"


 }

 variable "type_instance" {
     type = map(string)
     default = {
       "prd" = "t3.medium"
       "dev" = "t2.micro"
       "stg" = "t2.micro"
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
