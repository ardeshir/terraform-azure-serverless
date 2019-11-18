data "archive_file" "code_package" {
  type        = "zip"
  source_dir  = "${path.module}"
  output_path = "${path.module}/serverless.zip"
}

output "output_path" {
    value = data.archive_file.code_package.output_path
}
