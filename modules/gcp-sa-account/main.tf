locals {
    names = toset (var.names)
}

resource "google_service_account" "service_accounts" {
    for_each = local.names
    account_id = each.value.account_id
    display_name = var.display_name
    description = var.description
    project = var.project_id
}

resource "google_project_iam_member" "iam_memeber" {
    for_each = local.names
    project = var.project_id 
    role = var.role 
    member = "serviceAccount:${google_service_account.service_accounts[each.value].email}"
   condition {
    title       = var.title
    description = var.description 
    expression  = var.expression 
  }
}