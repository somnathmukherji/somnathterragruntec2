output "instance-id" {
  description = "The EC2 instance ID"
  value       = "${aws_instance.TERRAGRUNT1.id}"
}

output "instance-public-dns" {
  description = "The EC2 instance public DNS"
  value       = "${aws_instance.TERRAGRUNT1.public_dns}"
}
