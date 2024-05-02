module "sa-with-condition" {
  source     = "./modules/gcp-sa-account"
  project_id = "XYZ"
  names      = ["sa-iam-condition-tf", "xyz"]
  role       = "roles/compute.instanceAdmin"
  title      = "expires_after_2019_12_31"
  expression = "request.time < timestamp(\"2020-01-01T10:00:00Z\")"
  description = "Expiring at midnight of 2019-12-31"
}