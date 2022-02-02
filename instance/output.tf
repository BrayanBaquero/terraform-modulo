output "ip_instance"{
    value = aws_instance.platzi-instance.*.public_ip
}
//ssh -i ..\curso-terrafom\demo-packer\scripts\packer-key.pub centos@3.19.28.24