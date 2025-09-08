# Generate SSH key
resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create SSH private key
resource "local_file" "private_key" {
  filename        = "${path.module}/id_rsa"
  content         = tls_private_key.ssh.private_key_pem
  file_permission = "0600"
}

# Create SSH public key
resource "local_file" "public_key" {
  filename        = "${path.module}/id_rsa.pub"
  content         = tls_private_key.ssh.public_key_openssh
  file_permission = "0644"
}