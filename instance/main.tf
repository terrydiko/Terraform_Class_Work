module "instance_project" {
  source = "../modules/ec2/"


}


output "instanceIP" {
  value = module.instance_project.instanceIP
}
