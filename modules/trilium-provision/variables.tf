variable "app_name" {
  description = "Name of this app"
  type        = string
  default     = "Trilium Notes"
}

variable "app" {
  description = "URL friendly name of this app"
  type        = string
  default     = "trilium"
}

variable "module" {
  description = "Module name"
  type        = string
  default     = "provision"
}

variable "stage" {
  description = "Stage of deployment"
  type        = string
  default     = "production"
}

variable "domain" {
  description = "Domain name to host this app"
  type        = string
  default     = "trilium.someone.me"
}

variable "cert" {
  description = "The SSL certificate files for the domain"
  type = object({
    certificate_pem = string
    issuer_pem      = string
    private_key_pem = string
  })
  sensitive = true
}

variable "app_instance_username" {
  description = "User name of the app instance"
  type        = string
  sensitive   = true
}

variable "app_instance_public_ip" {
  description = "Public IP address of the app instance"
  type        = string
  sensitive   = true
}

variable "app_instance_keypair_path" {
  description = "Path to keypair file for ssh connection to the app instance"
  type        = string
  sensitive   = true
}

variable "app_dir" {
  description = "Path to app directory inside the app instance"
  type        = string
  default     = "/opt/trilium"
}

variable "app_image" {
  description = "App docker image"
  type        = string
  default     = "zadam/trilium:latest"
}

variable "proxy_image" {
  description = "Proxy docker image"
  type        = string
  default     = "nginx:alpine"
}

variable "log_group_region" {
  description = "Region of the log groups"
  type        = string
}

variable "app_log_group" {
  description = "CloudWatch log group for the app"
  type        = string
}

variable "proxy_log_group" {
  description = "CloudWatch log group for the proxy"
  type        = string
}
