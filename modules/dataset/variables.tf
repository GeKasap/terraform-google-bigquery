variable "dataset_id" {
  description = "A Unique ID, without the project name. Only letters (a-z,A-Z), numbers (0-9) and underscres (_) are allowed"
  type        = "list"
  default     = []
}

variable "default_table_expiration_ms" {
  description = "The default lifetime of all tables in the dataset, in milliseconds."
  type        = "string"
  default     = null
}

variable "description" {
  description = "A user friendly description"
  type        = "string"
  default     = ""
}

variable "friendly_name" {
  description = "A user friednly name"
  type        = "string"
  default     = ""
}

variable "labels" {
  description = "Labels for this dataset"
  type        = "map"
  default     = {}
}

variable "location" {
  description = "The geographic location of this dataset"
  type        = "string"
  default     = "EU"
}

variable "project" {
  description = "The ID of the project"
  type        = "string"
  default     = ""
}

variable "delete_contents_on_destroy" {
  description = "If set to true, delete all the tables in the dataset when destroying resource"
  type = "string"
  default = 0
}

variable "access" {
  description = "An array of objects that define dataset access for one or more entities. Structure is documented below."
  type = "list"
  default = []
}

