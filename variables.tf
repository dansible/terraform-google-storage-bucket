variable "project" {
  description = "The ID of the google project to which the resource belongs. If it is not provided, the project configured in the gcloud client is used."
}

variable "location" {
  description = "The GCS location."
}

variable "bucket_name" {
  description = "The name of the bucket"
}

variable "storage_class" {
  description = "The Storage Class of the new bucket. Supported values are: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE."
  default     = "REGIONAL"
}

variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects."
  default     = "false"
}

variable "labels" {
  description = "A set of key/value label pairs to assign to the bucket."
  type    = "map"
  default = { "managed-by" = "terraform" }
}

variable "versioning_enabled" {
  description = "While set to true, versioning is fully enabled for this bucket."
  default = true
}

variable "lifecycle_rules" {
  description = "The bucket's Lifecycle Rules configuration. See README for examples"
  type = "list"
  default = []
}

variable "logging_enabled" {
  description = "When set to true, enable the bucket's Access and Storage Logs configuration and create a storage_bucket for them."
  default = false
}

