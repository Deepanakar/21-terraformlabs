output "instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.myinstance_hyd[*].public_ip
}

output "instance_public_dns" {
  description = "Public dns of EC2 instance"
  value       = aws_instance.myinstance_hyd[*].public_dns
}

output "instance_ami_id" {
  description = "AMI ID of EC2 instance"
  value       = aws_instance.myinstance_hyd[*].ami
}




output "mumbai_instance_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.myinstance_mumbai[*].public_ip
}

output "mumbai_instance_public_dns" {
  description = "Public dns of EC2 instance"
  value       = aws_instance.myinstance_mumbai[*].public_dns
}

output "mumbai_instance_ami_id" {
  description = "AMI ID of EC2 instance"
  value       = aws_instance.myinstance_mumbai[*].ami
}