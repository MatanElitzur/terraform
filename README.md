# terraform
- Link to course examples https://github.com/wardviaene/terraform-course
This is a terraform knowledge base repository
- https://developer.hashicorp.com/terraform/tutorials/aws-get-started?utm_source=WEBSITE&utm_medium=WEB_IO&utm_offer=ARTICLE_PAGE&utm_content=DOCS
## Docker
- How to use terraform docker
  https://audun-nes.medium.com/how-to-use-the-official-terraform-docker-image-2609982114b9
- https://hub.docker.com/r/hashicorp/terraform
- docker run -i -t hashicorp/terraform:latest init
- When changing the version to a newer version you need to run the foolowing command
  docker run -i -t -v $(pwd):$(pwd) -w $(pwd) hashicorp/terraform:latest init --upgrade
- docker run -it -v $(pwd):$(pwd) -w $(pwd) hashicorp/terraform:latest init (WORKS)
- Will download the relevant modules
  docker run -it -v $(pwd):$(pwd) -w $(pwd) hashicorp/terraform:latest get
- trigger plan command on terraform image
  docker run -i -t hashicorp/terraform:latest plan
  docker run -i -t -v $(pwd):$(pwd) -w $(pwd) hashicorp/terraform:latest plan
-trigger plan command on terraform image, passing variables via command line
  docker run -i -t -v $(pwd):$(pwd) -w $(pwd) hashicorp/terraform:latest plan -var 'username=<USER_NAME>' -var 'password=<PASSWORD>'
## Commands
- https://spacelift.io/blog/terraform-commands-cheat-sheet
- https://developer.hashicorp.com/terraform/cli/commands
- Functions https://developer.hashicorp.com/terraform/language/functions/file
- Variables https://developer.hashicorp.com/terraform/language/v1.1.x/configuration-0-11/interpolation
- terraform console --> Experiment/Play with Terraform interpolations
## Files
- .terraform.lock.hcl file track providers and modules versions
- terraform.tfstate file - saves the last state of the apply command
- terraform.tfstate.backup - saves the last two state of the apply command
  

