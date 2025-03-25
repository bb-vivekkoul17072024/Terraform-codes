output "aws_instance_ip"{
    value=aws_instance.terraformtest.public_ip //prints the aws_instance referenced s terraformtest to print its publicip
    
}