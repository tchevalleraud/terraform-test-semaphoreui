terraform {
    required_providers {
        extrm-fabric-engine = {
            source = "tchevalleraud/extrm-fabric-engine"
            version = "~> 0.0.2"
        }
    }
}

provider "extrm-fabric-engine" {
    host        = var.vvoss1_host
    port        = 22
    username    = var.vvoss1_user
    password    = var.vvoss1_pass
}

resource "extrm-fabric-engine_hostname" "sw1" {
    hostname    = var.vvoss1_name
}