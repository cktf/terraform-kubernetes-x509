# Terraform Kubernetes X.509

![pipeline](https://github.com/cktf/terraform-kubernetes-x509/actions/workflows/cicd.yml/badge.svg)
![release](https://img.shields.io/github/v/release/cktf/terraform-kubernetes-x509?display_name=tag)
![license](https://img.shields.io/github/license/cktf/terraform-kubernetes-x509)

**X.509** is a Terraform module useful for creating X.509 users using **Kubernetes** provider

## Installation

Add the required configurations to your terraform config file and install module using command bellow:

```bash
terraform init
```

## Usage

```hcl
module "x509" {
  source = "cktf/x509/kubernetes"

  host     = "<CLUSTER_HOST>"
  ca_crt   = "<CLUSTER_CA_CRT>"
  username = "myuser"
  roles = {
    default      = "edit"
    my-namespace = "view"
  }
}
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

This project is licensed under the [MIT](LICENSE.md).  
Copyright (c) KoLiBer (koliberr136a1@gmail.com)
