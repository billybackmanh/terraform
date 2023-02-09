provider "kubernetes" {
  client_certificate     = "${file("/home/billy/.minikube/profiles/minikube/client.crt")}"
  client_key             = "${file("/home/billy/.minikube/profiles/minikube/client.key")}"
}


resource "kubernetes_namespace" "example_namespace" {
  metadata {
    name = "example-namespace"
  }
}
