# AKS with Cilium

This repo provides an aks cluster with Cilium as a CNI Plugin. Since `kube-proxy` configuration is on preview at azure([docs here](https://learn.microsoft.com/en-us/azure/aks/configure-kube-proxy)), i'll be switching to EKS first.

## Install

```sh
terraform apply
```

## Usage

```sh
terraform plan -out out.plan -var-file=./environments/dev.tfvars
terraform apply "out.plan"
```
