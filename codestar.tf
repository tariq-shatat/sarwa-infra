# Code Star connection with Github 

resource "aws_codestarconnections_connection" "source_repo" {
  name          = "source_repo_connection"
  provider_type = "GitHub"
}

