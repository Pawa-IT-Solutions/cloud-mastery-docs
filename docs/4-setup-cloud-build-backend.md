# 4. Automating Backend Deployments with Cloud Build

In this section, we'll harness the power of Google Cloud Build to create a Continuous Integration (CI) pipeline. This is a crucial step in modern software development.

Once configured, this pipeline will automatically build and deploy our backend application to Cloud Run every time we push new code to our GitHub repository. No more manual deployments!

## Create a Cloud Build Trigger

Let's start by creating the trigger that will listen for changes in our repository.

1.  In the Google Cloud Console, use the top search bar to find `Cloud Build`, then select **Triggers** from the results.
    ![Search for Cloud Build](assets/images/cloud_build_search.png)

2.  On the **Triggers** page, click **Create trigger**.
    ![Cloud Build Triggers Page](assets/images/cloud_build_triggers_page.png)

## Configure the Trigger

Now, we'll configure the trigger to connect to our specific GitHub repository and run our deployment instructions.

1.  **Name**: Give your trigger a descriptive name, like `cloud-mastery-backend-deploy`.
2.  **Region**: Select `us-central1 (Iowa)`.
3.  **Event**: Keep the default setting, `Push to a branch`.
4.  **Source - Connect your GitHub repository**:
    1.  Next to **Repository**, click **Connect new repository**.
        ![Connect New Repository](assets/images/cloud_build_connect_repo.png)
    2.  Select **GitHub (Cloud Build GitHub App)** and click **Continue**.
    3.  Authorize the Google Cloud Build app to access your GitHub account.
        ![Authorize GitHub Connection](assets/images/cloud_build_authorize_github.png)
    4.  On the GitHub installation page, select **All repositories** and click **Install**. This grants Cloud Build permission to see your repositories.
        ![Install Google Cloud Build GitHub App](assets/images/cloud_build_install_github_app.png)
    5.  Back in the Cloud Build console, select your forked `your-github-username/cloud-mastery-backend` repository from the dropdown.
    6.  Check the consent box and click **Connect**.
        ![Select Repository for Trigger](assets/images/cloud_build_select_repo.png)
5.  **Source - Branch**: In the **Branch** field, enter `^master$`.

    !!! info "What does `^master$` mean?"
        This is a regular expression that ensures the trigger *only* runs for pushes made directly to the `master` branch, ignoring other branches.

6.  **Configuration - Build Configuration**:
    *   **Type**: Select `Cloud Build configuration file (yaml or json)`.
    *   **Location**: Leave the default `Repository` setting. The path `/cloudbuild.yaml` points to the deployment instructions file already in your repository.
7.  **Advanced - Substitution Variables**:
    *   We need to securely provide our database password to the build process. We'll do this using a substitution variable.
    *   Click **Add variable**.
        *   **Variable**: `_MYSQL_PRISMA_URL`
        *   **Value**: This is the full connection string for your database. To build it:
            1.  Open a **new browser tab** and navigate to the [Cloud SQL instances page](https://console.cloud.google.com/sql/instances).
            2.  Copy the **Public IP address** of your `cloud-mastery-sql` instance.
                ![Copy Cloud SQL Public IP Address](assets/images/sql_instance_public_ip.png)
            3.  Construct the connection string using the format below.

    !!! warning "Action Required: Replace Placeholders"
        You must replace the following placeholders in the string below:
        *   `YOUR_PROJECT_ID`: Find this on your Google Cloud Console dashboard.
        *   `YOUR_INSTANCE_PUBLIC_IP`: The public IP address you just copied.

    ````
    mysql://student:YOUR_PROJECT_ID@YOUR_INSTANCE_PUBLIC_IP:3306/cloud_mastery?sslmode=require
    ````
    *   Paste your completed and correct string into the **Value** field.
        ![Add Substitution Variables](assets/images/cloud_build_substitution_variables.png)

8.  **Advanced - Service Account**:
    *   Scroll down to the **Service Account** dropdown.
    *   Select the service account that starts with `cloud-mastery-`. This special service account has the necessary permissions (like deploying to Cloud Run) to execute our pipeline.
        ![Select Service Account](assets/images/cloud_build_select_service_account.png)

9.  Click the **Create** button at the bottom of the page to save your trigger.

## Triggering Your First Automated Deployment

To trigger our pipeline, we need to push a new commit to our GitHub repository. We'll make a small, cosmetic change to do this.

1.  In your Cloud Shell, click the **Open Editor** (pencil) icon in the top-right.
    ![Open Editor](assets/images/click-pencil-icon-open-editor.png)
2.  The editor will open. In the left-hand navigation pane, click the **Explorer** (two pages) icon, then click the **Open Folder** button.
    ![Select File icon](assets/images/select-file-after-opening-editor.png)
    ![open folder](assets/images/click-open-folder.png)
3.  A dialog will ask for confirmation. Click **OK** to open the `cloud-mastery-backend` project.
    ![OK to open folder](assets/images/select-ok-open-folder.png)
4.  In the explorer, click on the `README.md` file to open it for editing.
    ![Select the readme file](assets/images/select-readme.png)
5.  Make any small change to the file, like adding a new line or fixing a typo. The content of the change doesn't matter.
6.  Now, return to the main Cloud Shell terminal (the black window at the bottom).
7.  Execute the following commands one by one to set up your Git identity, commit the file, and push it to GitHub.

    !!! note "Use Your Training Git Identity"
        Replace the placeholder email and name with the details provided for this training.

    ```bash
    # Ensure you are in the correct directory
    cd ~/cloud-mastery-backend

    # Configure your Git identity for this commit (one-time setup)
    git config --global user.email "firstname.lastname1@train.pawait.co.ke"
    git config --global user.name "First Name Last Name"

    # Stage, commit, and push your change to trigger the build
    git add .
    git commit -m "Trigger initial Cloud Build deployment"
    git push origin master
    ```
    Your push to the `master` branch is the event that our Cloud Build trigger is waiting for!
    ![successful push to backend repo](assets/images/successful-push.png)

## Monitor the Build and Verify Deployment

1.  Return to the Google Cloud Console and navigate to the Cloud Build **History** page. You'll see your build kick off automatically, listed with a "Running" status. Click on it to view the live logs.
    ![Cloud Build History](assets/images/cloud_build_history.png)
    ![Cloud Build in Progress](assets/images/cloud_build_in_progress.png)

2.  Patience is a virtue! The build process will take about 7 minutes to complete as it builds the container image and deploys it to Cloud Run. Once done, you'll see a green "Successful" status.
    ![Cloud Build Successful](assets/images/cloud_build_success.png)

3.  Let's see the result! Navigate to **Cloud Run** in the console (or use this direct link: [console.cloud.google.com/run](https://console.cloud.google.com/run)). You'll now see your `cloud-mastery-backend` service listed with a green checkmark, indicating it's deployed and healthy.
    ![Cloud Run Backend Service](assets/images/cloud_run_backend.png)

---

!!! success "Congratulations! Backend Automation Complete!"
    You have successfully configured a professional Continuous Integration / Continuous Deployment (CI/CD) pipeline. From now on, every time you `git push` a change to the `master` branch, Cloud Build will automatically handle the deployment for you.

    Next, we will apply these same principles to our frontend application.