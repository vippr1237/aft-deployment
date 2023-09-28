module "aft" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory?ref=1.10.4"
  # Required Vars
  ct_management_account_id    = "027738955646"
  log_archive_account_id      = "060744664212"
  audit_account_id            = "299871690219"
  aft_management_account_id   = "282299463027"
  ct_home_region              = "ap-southeast-1"
  # VCS Vars
  vcs_provider                                  = "github"
  account_request_repo_name                     = "vippr1237/aft-account-request"
  global_customizations_repo_name               = "vippr1237/aft-global-customizations"
  account_customizations_repo_name              = "vippr1237/aft-account-customizations"
  account_provisioning_customizations_repo_name = "vippr1237/aft-account-provisioning-customizations"

  aft_feature_delete_default_vpcs_enabled = true
  aft_feature_cloudtrail_data_events      = true
}