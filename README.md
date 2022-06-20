# Terraform CI/CD

## Prerequisites
* You must have an IAM user and an IAM access key pair associated with this user.
* You must have the following programs installed.
    * `awscli`
    * `jq`
    * `terraform`
    * `terragrunt`
    * `terraenv`
​
### Set up a local CLI profile to use your AWS account.
* Set up an AWS CLI profile containing your AWS IAM access key information.
​
```
aws configure --profile personal
​
AWS Access Key ID [None]: foo
AWS Secret Access Key [None]: bar
Default region name [None]: us-east-1
Default output format [None]: json
```
​
## Terraform Project Structure
​
Each terraform stack on this and any repository containing terraform code follows below folder / file structure
​
```
├── <stack-name>
│   ├── stack
│   │   ├── *.tf <-- terraform resources | providers | backend definitions
│   │   ├── variables.tf <-- terraform variables
│   └── variables
│       ├── develop
│       │   └── terraform.tfvars  <-- variable values and s3 backend for each environment
│       ├── qa
│       │   └── terraform.tfvars
│       ├── staging
│       │   └── terraform.tfvars 
│       └── production
│           └── terraform.tfvars
```
​
## How to plan & apply
​
Plan
​
```
AWS_PROFILE=personal STAGE=develop make plan
```
​
Apply
​
```
AWS_PROFILE=personal STAGE=develop make apply
```

