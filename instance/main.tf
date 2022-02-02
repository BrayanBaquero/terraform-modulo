provider "aws"{
    region =var.region
}

resource "aws_instance" "platzi-instance" {
    ami = var.ami
    instance_type = var.instance_type
    tags=var.tags
    security_groups = [aws_security_group.shh_connection.name]
    key_name = aws_key_pair.pk.id
    user_data = file("${path.module}/instalar-docker.sh")
}

resource "aws_security_group" "shh_connection" {
    name=var.sg_name
    dynamic "ingress"{
        for_each=var.ingres_rules
        content{
            from_port = ingress.value.from_port
            to_port = ingress.value.to_port
            protocol = ingress.value.protocol
            cidr_blocks = ingress.value.cidr_blocks#Permitir acceso publico
        }
    }
  
}
resource "aws_key_pair" "pk" {
    key_name = "packer-key"
    public_key = file("${path.module}/keys/packer-key.pem.pub")
  
}