#!/bin/bash

# Script to organize MkDocs images into correct directory structure
# Run this from your docs root directory

echo "Creating directory structure and copying images..."

# Create the required assets/images directories
mkdir -p data-analytics/assets/images
mkdir -p devops/assets/images  
mkdir -p migration/assets/images
mkdir -p virtual-agent/assets/virtual_agent

# Data Analytics images
echo "Copying data analytics images..."
cp assets/images/create-cloud-scheduler.png data-analytics/assets/images/
cp assets/images/define-schedule.png data-analytics/assets/images/
cp assets/images/access-bq.png data-analytics/assets/images/
cp assets/images/create-table.png data-analytics/assets/images/
cp assets/images/denormalized-orders.png data-analytics/assets/images/
cp assets/images/looker-copy.png data-analytics/assets/images/
cp assets/images/create-data-source.png data-analytics/assets/images/
cp assets/images/connect-to-bq.png data-analytics/assets/images/
cp assets/images/click-connect.png data-analytics/assets/images/
cp assets/images/add-to-report.png data-analytics/assets/images/
cp assets/images/copy-of-dashboard.png data-analytics/assets/images/
cp assets/images/new-order.png data-analytics/assets/images/
cp assets/images/categories.png data-analytics/assets/images/
cp assets/images/add-new-chart.png data-analytics/assets/images/
cp assets/images/config-new-chart.png data-analytics/assets/images/
cp assets/images/style-the-chart.png data-analytics/assets/images/

# DevOps images
echo "Copying DevOps images..."
# General DevOps
cp assets/images/cloudshell.png devops/assets/images/
cp assets/images/cloud_shell_continue.png devops/assets/images/
cp assets/images/cloud_shell_authorize.png devops/assets/images/
cp assets/images/gcp_reauth_password.png devops/assets/images/
cp assets/images/cloud_shell_terminal_ready.png devops/assets/images/
cp assets/images/cloud_shell_open_in_new_window.png devops/assets/images/
cp assets/images/cloud_shell_new_tab.png devops/assets/images/

# Backend setup
cp assets/images/github_fork_button_backend.png devops/assets/images/
cp assets/images/github_create_fork_page_backend.png devops/assets/images/
cp assets/images/github_forked_repo_ready_backend.png devops/assets/images/
cp assets/images/github_copy_ssh_clone_url_backend.png devops/assets/images/
cp assets/images/cloudshell_git_clone_backend.png devops/assets/images/
cp assets/images/cloudshell_list_cloned_files_backend.png devops/assets/images/

# Frontend setup  
cp assets/images/github_fork_button_frontend.png devops/assets/images/
cp assets/images/github_create_fork_page_frontend.png devops/assets/images/
cp assets/images/github_forked_repo_ready_frontend.png devops/assets/images/
cp assets/images/cloudshell_open_new_terminal.png devops/assets/images/
cp assets/images/2-cloudshells.png devops/assets/images/
cp assets/images/cloudshell_clone_frontend.png devops/assets/images/
cp assets/images/cloudshell_list_both_repos.png devops/assets/images/
cp assets/images/ll-cloud-mastery-frontend.png devops/assets/images/

# Cloud Build
cp assets/images/cloud_build_search.png devops/assets/images/
cp assets/images/cloud_build_triggers_page.png devops/assets/images/
cp assets/images/cloud_build_connect_repo.png devops/assets/images/
cp assets/images/cloud_build_authorize_github.png devops/assets/images/
cp assets/images/cloud_build_install_github_app.png devops/assets/images/
cp assets/images/cloud_build_select_repo.png devops/assets/images/
cp assets/images/sql_instance_public_ip.png devops/assets/images/
cp assets/images/cloud_build_substitution_variables.png devops/assets/images/
cp assets/images/cloud_build_select_service_account.png devops/assets/images/
cp assets/images/click-pencil-icon-open-editor.png devops/assets/images/
cp assets/images/select-file-after-opening-editor.png devops/assets/images/
cp assets/images/click-open-folder.png devops/assets/images/
cp assets/images/select-ok-open-folder.png devops/assets/images/
cp assets/images/select-readme.png devops/assets/images/
cp assets/images/successful-push.png devops/assets/images/
cp assets/images/cloud_build_history.png devops/assets/images/
cp assets/images/cloud_build_in_progress.png devops/assets/images/
cp assets/images/cloud_build_success.png devops/assets/images/
cp assets/images/cloud_run_backend.png devops/assets/images/

# Frontend pipeline
cp assets/images/connect-frontend-repo-cloud-build.png devops/assets/images/
cp assets/images/select-cloud-frontend.png devops/assets/images/
cp assets/images/backend-https-url.png devops/assets/images/
cp assets/images/cb_frontend_substitution_variables.png devops/assets/images/
cp assets/images/cb_frontend_triggers_list.png devops/assets/images/

# Application access
cp assets/images/frontend-cloudshell-folder.png devops/assets/images/
cp assets/images/select-readme-frontend.png devops/assets/images/
cp assets/images/cloud-master-frontend-push.png devops/assets/images/
cp assets/images/cb_frontend_history.png devops/assets/images/
cp assets/images/cb_frontend_build_success.png devops/assets/images/
cp assets/images/cr_access_frontend_url.png devops/assets/images/
cp assets/images/final_app_dashboard.png devops/assets/images/

# GitHub setup
cp assets/images/github_signup_page.png devops/assets/images/
cp assets/images/github_verify_account.png devops/assets/images/
cp assets/images/github_confirm_email.png devops/assets/images/
cp assets/images/github_dashboard_ready.png devops/assets/images/
cp assets/images/cloudshell_ssh_keygen.png devops/assets/images/
cp assets/images/cloudshell_list_ssh_keys.png devops/assets/images/
cp assets/images/cloudshell_cat_public_key.png devops/assets/images/
cp assets/images/github_profile_settings.png devops/assets/images/
cp assets/images/github_click_settings.png devops/assets/images/
cp assets/images/github_ssh_keys_menu.png devops/assets/images/
cp assets/images/github_add_new_ssh_key_page.png devops/assets/images/

# Cloud SQL
cp assets/images/sql_instances_list.png devops/assets/images/
cp assets/images/sql_instance_details_import.png devops/assets/images/
cp assets/images/sql_import_browse.png devops/assets/images/
cp assets/images/sql_import_select_bucket.png devops/assets/images/
cp assets/images/sql_import_select_file.png devops/assets/images/
cp assets/images/sql_import_select_database.png devops/assets/images/

# Migration images
echo "Copying migration images..."
cp assets/images/ssh-vm.png migration/assets/images/
cp assets/images/read-image.png migration/assets/images/
cp "assets/images/convertion success.png" "migration/assets/images/"
cp assets/images/create-instance.png migration/assets/images/
cp assets/images/import-boot-disk.png migration/assets/images/
cp assets/images/config-boot-disk.png migration/assets/images/
cp assets/images/config-networking.png migration/assets/images/
cp assets/images/migrated-vm.png migration/assets/images/
cp assets/images/create-vpc.png migration/assets/images/
cp assets/images/create-subnet.png migration/assets/images/
cp assets/images/app-subnet.png migration/assets/images/
cp assets/images/http-ingress.png migration/assets/images/
cp assets/images/access-migrated-vm.png migration/assets/images/
cp assets/images/gcloud-init.png migration/assets/images/
cp assets/images/y.png migration/assets/images/
cp assets/images/auth-url.png migration/assets/images/
cp assets/images/log1.png migration/assets/images/
cp assets/images/grant-permissions.png migration/assets/images/
cp assets/images/ver-code.png migration/assets/images/
cp assets/images/ver-code-terminal.png migration/assets/images/
cp assets/images/sign-in-eddie-term.png migration/assets/images/
cp assets/images/all-projects.png migration/assets/images/
cp assets/images/choose-project.png migration/assets/images/
cp assets/images/cloud-storage-details.png migration/assets/images/
cp assets/images/enable-vm-migration.png migration/assets/images/
cp assets/images/create-image.png migration/assets/images/
cp assets/images/image-sa-account.png migration/assets/images/
cp assets/images/ubuntu-vm-dk.png migration/assets/images/
cp assets/images/access-train-cloud-http.png migration/assets/images/
cp assets/images/install-qemu.png migration/assets/images/
cp assets/images/lsblk.png migration/assets/images/
cp assets/images/list-units.png migration/assets/images/
cp assets/images/stop-priority-services.png migration/assets/images/

# Virtual Agent images (note: different subdirectory structure)
echo "Copying virtual agent images..."
# First check if these exist in your assets/images folder
if [ -f "assets/images/intro.png" ]; then
    cp assets/images/intro.png virtual-agent/assets/virtual_agent/
fi
if [ -f "assets/images/7893475389457.png" ]; then
    cp assets/images/7893475389457.png virtual-agent/assets/virtual_agent/
fi
if [ -f "assets/images/image.png" ]; then
    cp assets/images/image.png virtual-agent/assets/virtual_agent/
fi
if [ -f "assets/images/image_1.png" ]; then
    cp assets/images/image_1.png virtual-agent/assets/virtual_agent/
fi
if [ -f "assets/images/image2.png" ]; then
    cp assets/images/image2.png virtual-agent/assets/virtual_agent/
fi
if [ -f "assets/images/datastore.png" ]; then
    cp assets/images/datastore.png virtual-agent/assets/virtual_agent/
fi
if [ -f "assets/images/deploy.png" ]; then
    cp assets/images/deploy.png virtual-agent/assets/virtual_agent/
fi
if [ -f "assets/images/embed.png" ]; then
    cp assets/images/embed.png virtual-agent/assets/virtual_agent/
fi

# Also copy products.json if it exists
if [ -f "assets/products.json" ]; then
    cp assets/products.json virtual-agent/assets/
fi

echo "Image organization complete!"
echo "You can now run 'mkdocs serve' to test your documentation."
echo ""
echo "If you want to keep the original assets/images folder as backup:"
echo "mv assets/images assets/images_backup"