terraform {
  backend "s3" {
    bucket = "elifzehra-terraform-state-2025" # burada kendi bucket ismini yaz
    key    = "terraform.tfstate"
    region = "us-east-1" # bölgeyi buraya sabit yaz
  }
}

