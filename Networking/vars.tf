variable "main_cidr" { 
      type = string
      default = "10.0.0.0/16"
}
variable "tenancy" {  
     type = string
      default = "default"
}

variable "route" {   
    type = string
    default = "10.0.1.0/24"
}

variable "internet_cidr" {  
    type = string
    default = "0.0.0.0/0"
     }

variable "ssh_port" {  
     default = "22"
      }

variable "Public_cidr" {  
     type = string
     default = "10.0.1.0/24" 
     }

variable "Private_cidr" {   
    type = string
    default = "10.0.2.0/24"
    }

