variable "ami_id" {
                    type = map(string)
                    default{
                                        "prod" = "ami-0ed9277fb7eb570c9"
                                         "stage" = "ami-03af6a70ccd8cb578"
                                         "dev" = "ami-00f7e5c52c0f43726"
                   }
}
 variable "region" {
                     type = map(string)
                     default = {
                                         "prod" = "us-east-1"
                                         "stage" = "us-west-1"
                                         "dev" = "us-west-1"
                     }

 }

 variable "type_instance" {
                    type = map(string)
                    default = {
                              "prod" = "t2.micro"
                              "stage" = "t2.micro"
                               "dev" =  "t2.micro"      

                    }

 }

 variable "terraform_Env" {
                     type = string
 }
variable "mandatory_tags" {
                    type = map(map(string))
                    default = {
                                        "prod" = {"Env" = "prod"}
                                        "stage" = {"Env" = "stage"}
                                        "dev" = {"Env" = "dev"}
                    }

}
