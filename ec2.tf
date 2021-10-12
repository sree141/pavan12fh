provider "aws" {
    region ="us-east-1"
    access_key = ""
    secret_key = ""

}
resource "aws_instance" "terraform-ec3"{  
    ami           = "ami-09e67e426f25ce0d7"  
    instance_type = "t2.micro"
    key_name = "basha"
    vpc_security_group_ids = [ "sg-0039fbacfa9b3fe01" ]
    subnet_id = "subnet-3d2e061c"
    root_block_device {
    
        volume_type = "gp2"
        volume_size = "8"
        delete_on_termination = true
      
    }
  tags =  {
  Name = "sree"  
  }
}
