##############################################
# Step 3: Write the Terraform Configuration
##############################################

# 1. Define local variable that contains simple JavaScript app code
locals {
  app_code = <<-EOT
    console.log("Hello from Terraform-generated Node.js app!");
  EOT
}

# 2. Create a file resource for index.js
resource "local_file" "webapp_app" {
  content  = local.app_code
  filename = "${path.module}/webapp/src/index.js"  # Terraform will create folders automatically
}

# 3. Output the path of the created file
output "webapp_file_path" {
  value       = resource.local_file.webapp_app.filename
  description = "The full path to the web application's index.js file."
}
