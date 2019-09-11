# Terraform  - BigQuery datasets
This project is an implementation of [Terraform BigQuery Datasets](https://www.terraform.io/docs/providers/google/r/bigquery_dataset.html)

Layout

```
main.tf      --> The main terraform files, this includes the module listed below
config.tf    --> General Terraform configuration, versions, etc.
variables.tf --> Variables needed for Terraform to execute, which also includes
                 defaults
outputs.tf   --> The output of the ELB's address for the Master Node
modules/
    terraform-google-bigquery/  
        --> This module creates a set of datasets in BigQuery by using default
            access permissions, or user defined access
```

## Credential required
Before you begin, you need to define credentials for the communication with GCP
```
export GOOGLE_APPLICATION_CREDENTIALS=/keybase/team/gfk_sre/creds-gcp/point-of-sale-1-provisioner/point-of-sale-1-provisioner.json
```
For more info, check: https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform


## Variables
<table>
<tr>
<td> Variable name </td><td> Type </td><td> Description </td><td> Default value </td></tr>
<tr>
<td> project </td><td> String </td><td> The ID of the project the resource belongs </td><td> </td></tr>
</tr><tr>
<td> region </td><td> String </td><td> Region </td><td> </td></tr>
</tr><tr>
<td> dataset </td><td> List   </td><td> A list of datasets to be created </td><td> </td></tr>
</tr><tr>
<td> dataset_access  </td><td> List   </td><td> A list of access maps e.g.
<pre lang="yaml">
{
   role = "OWNER"
   user_by_email = "test@example.com"
},
{
  role = "READER"
  domain = "fofofo.com"
}
</pre>
</td>i
<td></td>
</tr>
</tr>
</table>

## Building
### Initalization

```
$ terraform init
```

### Planning

Terraform allows you to "Plan", which allows you to see what it would change
without actually making any changes.

```
$ terraform plan 
```

### Applying

```
$ terraform apply
```

### Modifying

If you want to delete one or more datasets, then edit the `terraform.tfvars` file and run again `terraform apply`
```
$ terraform apply
```

### Destroying
```
$ terraform destroy
```

# Author

Georgios Kasapoglou

https://github.com/GeKasap

