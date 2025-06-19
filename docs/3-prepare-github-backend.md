# 3. Prepare GitHub Environment & Backend Repo

For this lab, we will work with two application repositories: `cloud-mastery-backend` and `cloud-mastery-frontend`. First, we need to set up your GitHub account and configure it to work with your Google Cloud Shell environment.

**Do you have a GitHub Account?**
    If you already have a GitHub account, you can skip directly to the **[Fork the Backend Repository](#fork-the-backend-repository)** section.

---

### Create a New GitHub Account (Optional)

1.  Navigate to the GitHub signup page: [github.com/signup](https://github.com/signup).

2.  Fill in your details (email, password, username) to create your account.

    ![GitHub Signup Page](assets/images/github_signup_page.png)

3.  Complete the "Verify your account" puzzle to prove you're human.

    ![GitHub Account Verification Puzzle](assets/images/github_verify_account.png)

4.  GitHub will send a verification code to your email address. Enter this code to confirm your email.

    ![Confirm Your Email Address](assets/images/github_confirm_email.png)

5.  Once verified, proceed to sign in. Your new GitHub account is now ready!

    ![New GitHub Account Dashboard](assets/images/github_dashboard_ready.png)

---

### Fork the Backend Repository

You need your own copy of the application repository to make changes. This is done by "forking" it.

1.  Access the Cloud Mastery backend repository here:
    [https://github.com/Pawa-IT-Solutions/cloud-mastery-backend](https://github.com/Pawa-IT-Solutions/cloud-mastery-backend)

2.  Click the **Fork** button in the top-right corner.

    ![Fork the Backend Repository](assets/images/github_fork_button_backend.png)

3.  On the "Create a new fork" page, you can leave the details as they are and click **Create fork**.

    ![Create Fork Page](assets/images/github_create_fork_page_backend.png)

4.  You will be redirected to your own forked copy of the repository. It is now ready!

    ![Forked Repository is Ready](assets/images/github_forked_repo_ready_backend.png)

---

### Configure Cloud Shell SSH Key

To securely clone the repository to your Cloud Shell, you need to add your Cloud Shell's SSH key to your GitHub account.

1.  Navigate back to your **Google Cloud Shell** tab.

2.  Run the `ssh-keygen` command to generate a new SSH key. Press `Enter` three times to accept the default file location and create a key without a passphrase.

    ```
    ssh-keygen
    ```
    ![Generate SSH Key in Cloud Shell](assets/images/cloudshell_ssh_keygen.png)

3.  Verify that the public key file (`id_ed25519.pub`) was created.

    ```
    ls -l .ssh/
    ```
    ![List SSH Key Files](assets/images/cloudshell_list_ssh_keys.png)

4.  Display the public key and copy its entire content to your clipboard.

    ```
    cat .ssh/id_ed25519.pub
    ```
    ![Display and Copy Public Key](assets/images/cloudshell_cat_public_key.png)

5.  Head back to your **GitHub** tab. Click on your profile icon in the top-right corner and select **Settings**.

    ![Navigate to GitHub Profile](assets/images/github_profile_settings.png)
    ![Select GitHub Settings](assets/images/github_click_settings.png)

6.  In the left navigation menu, click on **SSH and GPG keys**.

    ![SSH and GPG Keys Menu](assets/images/github_ssh_keys_menu.png)

7.  Click **New SSH key**. Give it a descriptive **Title** (e.g., "Google Cloud Shell") and paste the copied key into the **Key** field. Click **Add SSH key**.

    ![Add New SSH Key to GitHub](assets/images/github_add_new_ssh_key_page.png)

---

### Clone the Repository to Cloud Shell

Now you can clone your forked repository.

1.  In GitHub, navigate to your forked `cloud-mastery-backend` repository. Click the green **<> Code** button, select the **SSH** tab, and copy the SSH URL.

    ![Copy SSH Clone URL](assets/images/github_copy_ssh_clone_url_backend.png)

2.  Go back to your **Cloud Shell** terminal and run the `git clone` command, pasting the URL you just copied.
    Replace the URL with your own forked repository SSH URL

    ```
    git init && git clone git@github.com:austinkaruru1/cloud-mastery-backend.git
    ```

3.  When prompted `Are you sure you want to continue connecting (yes/no/[fingerprint])?`, type `yes` and press `Enter`.

    ![Git Clone Output in Cloud Shell](assets/images/cloudshell_git_clone_backend.png)

4.  Navigate into the newly created directory and list its contents.

    ```
    cd cloud-mastery-backend && ls -l
    ```
    ![List Cloned Repository Files](assets/images/cloudshell_list_cloned_files_backend.png)

---

**Great job!** Your GitHub account is configured, and you have successfully cloned the backend application code into your Cloud Shell. Next, we will set up the continuous integration pipeline using Cloud Build.