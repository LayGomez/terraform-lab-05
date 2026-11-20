resource "random_id" "sufijo" {
  byte_length = 4
}

# Bucket en Europa (usa provider por defecto)
resource "aws_s3_bucket" "europa" {
  bucket = "lab-cap06-europa-${random_id.sufijo.hex}"
}

# Bucket en Virginia (usa provider con alias)
resource "aws_s3_bucket" "virginia" {
  bucket = "lab-cap06-virginia-${random_id.sufijo.hex}"
  provider = aws.virginia
}

# SSM Parameter solo existe en us-east-1 para este lab
resource "aws_ssm_parameter" "config" {
  provider = aws.virginia
  name = "/lab-cap06/entorno"
  type = "String"
  value = "produccion"
}