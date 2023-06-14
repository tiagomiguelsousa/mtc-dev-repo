//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/terraform-course-2023/compute/aws"
  version = "1.0.0"

  aws_region          = "eu-west-1"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDAoR3IsfZees8qb1EQyeiQ5shDiIFetx4cGZ0zIP6Ch0kz+gPgPpqtZI7zZIM+9e1u8q//1oZseEk4LPNGmc+23z8HUoE9bhSoFSs9MHI2hBgwfj5SiIc6Cmi//xC60/cPwTW6iMxyzHG13+j4ANmJRpinKri68Dbib4VJ7/kkRWfxdWzd+QB+Msr7xZq8ACxeKDedjo7BSS+3w5Erhg3LLB9b5Ye9nT+uyXcB6UZNPZ8p5uKvi34uSn8OTH6x/B0s5X7xNQoVAzrSkLOEKl1XMjZBTqWJ0pXiwCCYDmeK4dS2xzI1MpI6MXWcnTZzn6GE9vPjLHLB2RNejcTiucYrneroxnypZ8qFUvJYI5HsKMMayflTRKX7IHVy5y8LOBH0i1X3br6IaHbChC+53uzcmPJvZcL6C5OXEpqdfHz5gNObP7qxOkZXSw4gD+/Uw/1mty2/JtKLiL1hp14DlQt4gu3S9kwR9ink6KIsNy/0JjE7TNpkIawgtj701oP2fcE= tiagoamaralsousa@Tiagos-MBP-6.home"
  public_sg           = module.networking.public_sg
  public_subnets      = module.networking.public_subnets
}

module "networking" {
  source  = "app.terraform.io/terraform-course-2023/networking/aws"
  version = "1.0.0"

  access_ip  = "0.0.0.0/0"
  aws_region = "eu-west-1"
}