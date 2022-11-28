# Sarwa Go Test Server Infrastructure (DevOps Assessment)

This repository is dedicated to the infrastructure resources for Sarwa DevOps assignment. The infrastructure has been provisioned on AWS through terraform.

## Architecture Overview

The main infrastructure of the application is mainly hosted on a `fargate ECS` cluster, highly available across two different availability zones. The `ECS` tasks run on a private subnet and are fronted by an `ALB` which forwards the traffic to those private tasks, and all the application logs are always sent to cloud watch.

Part of this infrastructure concerns with the pipeline that will be used by the developers to push their code into production. The pipeline is built using `Code pipeline` which connects to the code repo through a `Codestar` connection, and using `Code Build` the `docker` image is being built and pushed to `ECR` repository and the `ECS task` definition is updated and a new deployment is rolled out to the `ECS cluster`.

The following diagram illustrates the architecture of the application infrastructure

![](https://i.ibb.co/mJbCxWK/sarwa-drawio-2.png)

## Getting started with Terraform

### Prerequisite

- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### Repository Structure

This repository contains a set of terraform resources, and the parameters for resource configurations are specified in the `terraform.tfvars` file.

Once you clone the repo into your local machine, you can start using terraform commands to interact with infrastructure.

- `terraform init`  to install the initial provider locally and initialize the local working directory.
- `terraform plan` to see the plan of the configuration changes if it's applied to the infrastructure.
- `terraform apply` to apply the terraform changes to the AWS account

## Future Plans

The current infrastructure is built for the MVP and as we scale the application the following action items might be needed.

- [ ] Setting up a DNS resolution for the ALB host using Route53 and provision SSL certificate to encrypt the traffic.
- [ ] Although the current infrastructure is highly available, we need to configure Autoscaling for No. of ECS tasks based on the traffic and utilization.
- [ ] Setting up development and staging environments for developers to utilize.
- [ ] Change the deployment strategy to a blue/green deployment, to allow easy and less disruptive rollback mechanisms.
- [ ] Improve the observability of the application by setting up alerts on both infrastructure and application and providing playbooks for incident response.
- [ ] Improve the application security by integrating AWS WAF with ALB to be able to mitigate different types of risks.
