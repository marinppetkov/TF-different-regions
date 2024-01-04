variable "server-east" {
    type = map(any)
    default = {
      dev =  {
      instance_type = "t3.micro"
      instance_tag = "dev"
    },
     prod = {
      instance_type = "t3.micro"
      instance_tag = "prod"
     }
    }
}

variable "server-west" {
    type = map(any)
    default = {
      dev =  {
      instance_type = "t3.micro"
      instance_tag = "dev"
    },
     prod = {
      instance_type = "t3.micro"
      instance_tag = "prod"
     }
    }
}