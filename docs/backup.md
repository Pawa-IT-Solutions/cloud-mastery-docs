# Prepare GCP Environment
## Overview

In this lab, you'll set up your Google Cloud Platform environment and prepare it for application migration. This foundational step ensures you have the necessary resources and permissions for the upcoming labs.

## What You'll Learn

- How to create and configure a GCP project
- Setting up billing and enabling necessary APIs
- Configuring IAM roles and permissions
- Installing and configuring the Google Cloud CLI

## Prerequisites

- Active Google account
- Basic understanding of cloud computing concepts

## Lab Steps

### Step 1: Prepare the Google Cloud Environment

In this first section, we will log in to the Google Cloud console and set up the Cloud Shell, which will be our primary command-line environment for this training.
1. Navigate to the [Google Cloud Console](https://console.cloud.google.com)
2. Click on the project selector dropdown
3. Click "New Project"
4. Enter project details:
   - **Project Name**: `cloud-mastery-training-[your-name]`
   - **Organization**: Select your organization (if applicable)
5. Click "Create"

### Step 2: Enable Billing

!!! warning "Billing Required"
    While many GCP services offer free tiers, you'll need to enable billing to access all features needed for this training.

1. Go to **Billing** in the left navigation
2. Link a billing account or create a new one
3. Verify billing is enabled for your project

### Step 3: Enable Required APIs

Enable the following APIs for your project:

```bash
gcloud services enable compute.googleapis.com
gcloud services enable sql-component.googleapis.com
gcloud services enable sqladmin.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable run.googleapis.com
gcloud services enable artifactregistry.googleapis.com
```

### Step 4: Install Google Cloud CLI

=== "Windows"

    1. Download the [Google Cloud CLI installer](https://cloud.google.com/sdk/docs/install#windows)
    2. Run the installer and follow the prompts
    3. Restart your command prompt

=== "macOS"

    ```bash
    # Using Homebrew
    brew install google-cloud-sdk
    
    # Or download the package
    curl https://sdk.cloud.google.com | bash
    ```

=== "Linux"

    ```bash
    # Ubuntu/Debian
    sudo apt-get update
    sudo apt-get install apt-transport-https ca-certificates gnupg
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
    sudo apt-get update && sudo apt-get install google-cloud-cli
    ```

### Step 5: Authenticate and Configure

1. Initialize the CLI:
   ```bash
   gcloud init
   ```

2. Follow the prompts to:
   - Log in to your Google account
   - Select your project
   - Choose a default compute region (recommend: `us-central1`)

3. Verify your configuration:
   ```bash
   gcloud config list
   gcloud projects describe $(gcloud config get-value project)
   ```

## Verification

To verify your setup is complete, run these commands:

```bash
# Check project configuration
gcloud config get-value project

# List enabled services
gcloud services list --enabled

# Check authentication
gcloud auth list

# Test API access
gcloud compute zones list --limit=5
```

## Troubleshooting

### Common Issues

| Issue | Solution |
|-------|----------|
| "Project not found" error | Verify project ID is correct and you have access |
| API not enabled error | Enable required APIs using `gcloud services enable` |
| Permission denied | Check IAM roles and ensure you have necessary permissions |
| Billing not enabled | Enable billing in the GCP Console |

### Getting Help

If you encounter issues:

1. Check the [GCP Status Page](https://status.cloud.google.com/)
2. Review error messages carefully
3. Ask for help in the training Slack channel
4. Consult the [GCP Documentation](https://cloud.google.com/docs)

## Next Steps

Once your GCP environment is ready, proceed to configure your Cloud SQL database.

---

<div class="page-nav">
  <div class="nav-item">
    <a href="../introduction/" class="btn-secondary">← Previous: Introduction</a>
  </div>
  <div class="nav-item">
    <span><strong>Lab 1 of 9</strong> - GCP Environment Setup</span>
  </div>
  <div class="nav-item">
    <a href="../setup-cloud-sql/" class="btn-primary">Next: Setup Cloud SQL →</a>
  </div>
</div>