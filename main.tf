terraform {
  required_version = ">= 0.12" # colocando compatibilidade do terraform para 0.12
}

resource "aws_instance" "web" {
  subnet_id = "subnet-0314a6112147243f5"
  ami           = "ami-0e66f5495b4efdd0f"
  instance_type = var.tipo
  key_name = "chave_key_victor" # a chave que vc tem na maquina pessoal
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-06560d07a1d9b9964"]
   root_block_device {
     encrypted = true
     volume_size = 8
   }
  tags = {
    Name = "${var.nome}",
    Itau = true
  }
}