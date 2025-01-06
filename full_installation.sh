# Kind cluster mainfest

YAML_FILE ="/home/amitt-ashok/Kubernetes/cluster_config.yaml"

#update the system
sudo apt-get upadte

#Install docker 
sudo apt install docker.io 

#add permission and refresh docker 
sudo usermod -aG docker $USER && newgrp docker 

#Now check permission
docker ps

# install kubectl 
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client

# install kind cluster
curl -Lo ./kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

# install kind cluster
kind create cluster --config $YAML_FILE

#check install of kind cluster
kubectl get nodes
