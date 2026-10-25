variable "dev_rg_name" {
    description = "The name of the development resource group"
    type        = string

  
}
variable "dev_location" {
    description = "The location of the development resource group"
    type        = string
    default     = "East US"
}
variable "dev_environment" {
    description = "The environment tag for the development resource group"
    type        = string
    default     = "dev"
}

variable "dev_owner" {
    description = "The owner of the development resource group"
    type        = string
}

variable "qa_rg_name" {
    description = "The name of the QA resource group"
    type        = string
}
variable "qa_location" {
    description = "The location of the QA resource group"
    type        = string
    default     = "East US"
}
variable "qa_environment" {
    description = "The environment tag for the QA resource group"
    type        = string
    default     = "qa"
}
variable "qa_owner" {
    description = "The owner of the QA resource group"
    type        = string
}
variable "prod_rg_name" {
    description = "The name of the production resource group"
    type        = string
}
variable "prod_location" {
    description = "The location of the production resource group"
    type        = string
    default     = "East US"
}
variable "prod_environment" {
    description = "The environment tag for the production resource group"
    type        = string
    default     = "prod"
}
variable "prod_owner" {
    description = "The owner of the production resource group"
    type        = string
}