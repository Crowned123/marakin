terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

}

provider "yandex" {
  token     = var.yc_token
  cloud_id  = var.yc_cloud
  folder_id = var.yc_folder
}

