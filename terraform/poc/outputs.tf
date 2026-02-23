output "instance_public_ip" {
  value = aws_instance.my_server.public_ip
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}
