variable "project" {}

variable "region" {}

variable "datasets" {
  description = "List of datasets to be created"
  type = "list"
  default = []
}

variable "dataset_access" {
  type = "list"
  default = []
}
