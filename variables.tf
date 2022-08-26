variable "AWS_REGION" {    
    default = "us-east-1"
}
variable "AMI" {
    type = map(string)

    default = {
        # For demo purposes only, we are using ubuntu for the web1 and db1 instances
        us-east-1 = "ami-05fa00d4c63e32376" # l 20.04 x86
    }
}
variable "EC2_USER" {
    default = "linux"
}

variable "key_name" {
   type = string
   default = "bastion-kp"
}

variable "identifier" {
    type = string
    default = "mysqldb"
}

variable "storage_type" {
  type = string
  default = "gp2"
}

variable "allocated_storage" {
  type = string
  default = "30"
}

variable "engine" {
  type = string
  default = "mysql"
}

variable "engine_version" {
  type = string
  default = "5.7.33"
}

variable "instance_class" {
  type = string
  default = "db.t2.micro"
}

variable "port" {
  type = string
  default = "3306"
}

variable "db_name" {
  type = string
  default = "wpdatabase"
}

variable "username"{
    type        = string
    default = "admin"
}

variable "password"{
    type        = string
    default = "administrator"
}

variable "availability_zone" {
   type = string
   default = "us-east-1b"
}
