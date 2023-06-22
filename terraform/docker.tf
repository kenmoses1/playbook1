provider "docker" {}

#create the image in the env
resource "docker_image" "image" {
  name = "kenmoses/yolo-kasee:1.0.0"
}

#Create a custom network
resource "docker_network" "private_network" {
  name = "my_private_network"
  ipam_config {
    subnet = "172.11.0.0/16"
  }
}

#create a volume
resource "docker_volume" "private_volume" {
  name = "private_volume"
}

# Start a container
resource "docker_container" "client" {
  name  = "client_container"
  image = docker_image.image.name
  networks_advanced {
    name = docker_network.private_network.name
  }
  #volumes {
   # volume_name = docker_volume.private_volume.name
  #}
}