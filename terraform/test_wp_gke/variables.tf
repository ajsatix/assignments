variable "creds_file" { }
variable "project" { }
variable "region" { }
variable "zone" { }

// VPC, subnet and firewall
variable "vpc" { }

// Wordpress specific details
variable "wpdbvm" { }
variable "wpdb" { }
variable "wpdb_user" { }
variable "wpdb_userpass" { }

// Cluster details
variable "gke" {}
variable "gkenodepool" {}

// Deployment Details
variable "wpdep" {}
variable "wppod" {}
