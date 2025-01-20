# Kubernetes-Manifest

This repository is used to learn about Kubernetes and how exactly manifest files are used in clusters.

## Table of Contents

- [Project Overview](#Project-overview)
- [Technologies Used](#Technologies-used)
- [Installation](#installation)
- [Read More](#Read_More)
- [Contributing](#contributing)
- [License](#license)

## Project Overview

## Kubernetes Manifest Files
This repository contains Kubernetes manifest files for various resources and their usage in real-world scenarios. As an example, the Nginx folder demonstrates how to create and deploy an Nginx application using Kubernetes.

## Kubernetes Manifests
Kubernetes manifest files are written in YAML format, which is easy to understand and maintain. These manifests define the resources and configurations needed to deploy and manage applications on a Kubernetes cluster.

You can refer to the official Kubernetes documentation for a deeper understanding of how these resources work and to explore more advanced configurations.

[Kubernetes Documentation](https://kubernetes.io/docs/)


Example: Nginx Deployment
The Nginx folder contains an example of deploying an Nginx application using Kubernetes manifests. This includes resources like Deployment, Service, Ingress, and others that are commonly used in a Kubernetes environment.
You can explore the example files here:
- [nginx-deployment.yaml](Nginx/deployment.yaml)
- [nginx-service.yaml](nginx/service.yaml)

How to Use
Clone the repository to your local machine.

Navigate to the specific folder for the resource you want to explore, such as the Nginx folder.

Apply the manifest files using kubectl:

```bash
# Example installation command
kubectl apply -f nginx-deployment.yaml
```
Monitor the resources using:
```bash
kubectl get all
```

# Technologies-used

Setting Up a Local Kubernetes Cluster with kind
Follow these steps to create a local Kubernetes cluster using kind (Kubernetes IN Docker). This guide assumes you have Docker installed on your machine.

Prerequisites
Step 1 : Docker must be installed and running on your local machine.
kind must be installed. If it's not already installed, follow the installation steps below.

# For Linux
```bash
curl -Lo ./kind https://kind.sigs.k8s.io/dl/latest/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
```

Step 2: Create a Kubernetes Cluster with kind
To create a Kubernetes cluster using kind, run the following command:
```bash
kind create cluster --name my-cluster
```
his command will create a single-node Kubernetes cluster with the name my-cluster. You can change the name of the cluster by replacing my-cluster with your preferred name.

Step 3 : Step 3: Verify the Cluster Creation
After the cluster is created, you can verify that the Kubernetes cluster is up and running by checking the nodes:

```bash
kubectl get nodes
```
Step 4 :Create a Multi-Node Cluster (Optional)
By default, kind creates a single-node cluster. If you want to create a multi-node cluster (e.g., with control plane and worker nodes), you can do so by providing a custom configuration file.

Create a kind-config.yaml file with the following content:
- [cluster_config.yaml](cluster_config.yaml)

Then, create the cluster using this configuration:
```bash
kind create cluster --config cluster_config.yaml
```
Step 5 :Delete the Cluster
Once you're done, you can delete the cluster with:
```bash
kind delete cluster --name my-cluster
```
This will remove the my-cluster from your system.

# Read_More
You can visit some of my article for understaing purpose.

- [Basic Kubernetes](Kubernetes_Series.pdf)
- [Kubernetes workload](Kubernetes-workload.pdf)
- [Kubernetes PV&PVC](Kubernetes-PV-PVC.pdf)

