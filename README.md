# Kubernetes-Manifest

![Kubernetes Logo](https://kubernetes.io/images/kubernetes-logo.png)

This repository is used to learn about Kubernetes and how exactly manifest files are used in clusters.

## Table of Contents

- [Project Overview](#project-overview)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
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

Monitor the resources using:

kubectl get all


