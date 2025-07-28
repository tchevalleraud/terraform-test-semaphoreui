terraform {
    required_providers {
        extrm-fabric-engine = {
            source = "tchevalleraud/extrm-fabric-engine"
            version = "~> 0.0.9"
        }
    }
}

provider "extrm-fabric-engine" {
    alias       = "device1"
    host        = "10.201.100.51"
    port        = 22
    username    = "rwa"
    password    = "rwa"
}

provider "extrm-fabric-engine" {
    alias       = "device2"
    host        = "10.201.100.52"
    port        = 22
    username    = "rwa"
    password    = "rwa"
}

resource "extrm-fabric-engine_hostname" "device1" {
    hostname    = "vVOSS1"
}

resource "extrm-fabric-engine_hostname" "device2" {
    hostname    = "vVOSS2"
}