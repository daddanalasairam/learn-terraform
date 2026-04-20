provider "vault" {
  address = "https://<IP>:8200"
  token = var.vault_token
  skip_tls_verify = true
}

variable "vault_token" {}

data "vault_generic_secret" "example" {
  path = "test/my_credentials"
}

# data "vault_kv_secret_v2" "example" {
#   name = "my_credentials"
#   mount = "test"
# }

resource "local_file" "foo" {
  filename = "/tmp/secret"
  content  = data.vault_generic_secret.example.data["password"]
}

# output "json" {
#   value = data.vault_kv_secret_v2.example.data_json
# }

#To check the key in the file use the command : cat /tmp/secret