variable "s3_name" {
    type = string
    description = "name of s3 bucket"
    default = "gnanendrasairambackend"

  
}
variable "dynamodb_name" {
    type = string
    description = "name of dynamodb table"
    default = "lock-state-db"

  
}