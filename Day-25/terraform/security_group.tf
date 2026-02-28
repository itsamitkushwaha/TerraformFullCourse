# Security Group for EC2 Instances (App Tier)
resource "aws_security_group" "app_sg" {
  name        = "test-tf-sg"
  description = "launch-wizard-21 created 2026-02-28T08:36:29.736Z"
  vpc_id      = data.aws_vpc.selected.id

  ingress {
    description     = ""
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description     = ""
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    description = ""
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # TODO: Change to your IP: ["YOUR_IP/32"]
  }

  egress {
    description = ""
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "managed by" : "Terraform"
  }
}

