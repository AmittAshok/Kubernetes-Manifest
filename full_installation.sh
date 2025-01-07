# Kind cluster mainfest

#!/bin/bash

YAML_FILE="cluster_config.yaml"

# Update the system
sudo apt-get update -y

# Install Docker
sudo apt-get install -y docker.io

# Add the current user to the docker group and refresh the session
sudo usermod -aG docker $USER

# Restart the docker service
sudo systemctl restart docker

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client

# Install kind
curl -Lo ./kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# Create a kind cluster using the provided YAML file
kind create cluster --config $YAML_FILE

# Check the installation of the kind cluster
kubectl get nodes
