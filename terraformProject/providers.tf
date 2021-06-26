providers "aws" {
    profile = var.profile
    region = var.region-master
    alias = "region-master"
}

providers "aws" {
    profile = var.profile
    region = var.region-worker
    alias = "region-worker"
}