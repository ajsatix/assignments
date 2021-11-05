# About the code completed
 * It has two projects prod and dev. Worpress is deployed in GKE in dev and DB is install in prod
 * VPC and subnets are created and correspondingly they are peered between prod and dev. Firewall also has been set in teeraform.
 * setup  of gke in default regeion.
 * wordress deployement is done via terraform to gke

# suggestions and improvements
* GCR container regestriy can be used to store images. GCR comes with vulnerability scan. Ideal way is to create a base linux image and harden it. then install wordpress on it. push the docker to GCR and perform a vulnerability scan.
* Terraform modules need to be created so that the code becomes modular and reusable.
* Add an Inngress controller for incoming traffic
* secrets management we can setup vault in GKE in a diiferent GKE cluster.


# Output.txt
* it contains the output of the tf code.
