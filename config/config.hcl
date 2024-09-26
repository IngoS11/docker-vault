ui = true
disable_mlock = "true"
default_lease_ttl = "168h"
max_lease_ttl = "720h"

storage "raft" {
    path = "/vault/data"
    node_id = "node1"
}

listener "tcp" {
    address = "[::]:8200"
    tls_disable = "false"
    tls_cert_file = "/certs/vault.crt"
    tls_key_file = "/certs/vault.key"
}

api_addr = "https://localhost:8200"
cluster_addr = "https://localhost:8201"
