variable "ami" {
  description = "ami personalizada creada con packer"
  default     = "ami no encontrada"
}
variable "region" {
  description = "region"
  default     = "region no encontrada"
}
variable "instance_type" {
  description = "tipo de instancia"
  default     = "instancia no encontrada"
}
variable "tags" {
  description = "tags de instancia"
  default     = "tag no encontrado"
}
variable "sg_name" {
  description = "nombre security group"
  default     = "sg nombre no encontrado"
}
variable "ingres_rules" {
  description = "sg reglas de entrada"
  default     = "no encontrado"
}
