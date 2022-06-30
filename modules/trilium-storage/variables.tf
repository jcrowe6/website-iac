variable "app_name" {
  description = "Name of this app"
  type        = string
  default     = "Cednore Notes"
}

variable "app" {
  description = "URL friendly name of this app"
  type        = string
  default     = "trilium"
}

variable "module" {
  description = "Module name"
  type        = string
  default     = "storage"
}

variable "stage" {
  description = "Stage of deployment"
  type        = string
  default     = "production"
}

variable "app_instance_id" {
  description = "ID of the app instance"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for data volume"
  type        = string
  default     = "us-east-2a"
}

variable "device_letter" {
  description = "Letter for device name of data volume (f-p)"
  type        = string
  default     = "f"

  validation {
    condition     = length(var.device_letter) == 1 && contains(split("", "fghijklmnop"), var.device_letter)
    error_message = "Device letter should be in range of f-p. See https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html"
  }
}

variable "volume_size" {
  description = "Size of data volume"
  type        = number
  default     = 100
}
