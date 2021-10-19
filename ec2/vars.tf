variable "instance" { default = "t2.micro" }

variable "image" { default = "ami-0b0af3577fe5e3532" }

variable "key" {
    type = string
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCtzFPtcq8iJPIoV0whfgr63Vka5oPftnfnF7HE2QQxh4tFAgU9WUYKR6FZ31hLWMbAwnTXKoqEV/5OV4mZkNL6UnT70ro/8e8MDqHVlEvEZ6ganNq2tn6WJiPV6y8qE27b4dMVoMMXxgBVFLjshOdcp0qKL+rviN2IUiX9tOzXl1PIge/la/DINRNiRqWj58gV4d/bS8oOsuO9VXun0PIk713aEN1fRe3erJjYC1VM35gOw6RCZ7HkVHOMmGJeDeVDJgzr/7RZbnARo6JTmJ6yB6vQ95FD/CVgGgLl26QIEYs/FyhpmtIDF7o+bXWfO0+QlukbTvMHJaj5pFomZ9mJ faizan.k@faizan.k"
}
variable "data" {
    type = bool
    default = true
}



