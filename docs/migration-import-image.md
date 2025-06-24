# Import the VMDK as a Bootable GCP Image

This is the most important step in the migration process. It converts your uploaded `.vmdk` disk file into a bootable image template that Google Cloud can use to create new virtual machines.

## Step 1: Enable the VM Migration API

Before you can import an image, you must ensure the **VM Migration API** (also known as "Migrate to Virtual Machines API") is enabled for your project.

1.  Navigate to the VM Migration API page in the Google Cloud Console:
    [https://console.cloud.google.com/compute/mfce](https://console.cloud.google.com/compute/mfce)
2.  If the API is not already enabled, you will see an **Enable** button. Click it to activate the API. This may take a moment.

## Step 2: Navigate to the Image Imports Tab

1.  In the Google Cloud Console, use the navigation menu to go to **Compute Engine** > **Storage** > **Images**.
2.  Click on the **IMAGE IMPORTS** tab at the top of the page.
3.  Click **[+] CREATE IMAGE**.

![Navigate to Image Imports](https://storage.googleapis.com/pawait-sitedocs/migration/gcp-navigate-image-imports.png)

## Step 3: Configure the Image Import Job

On the "Create an image" page, fill in the following details to configure the import job.

*   **Name**: `cloud-mastery-image`
    *   This will be the name of the final bootable image in GCP.

*   **Source**:
    1.  Click **BROWSE**.
    2.  Navigate to your Google Cloud Storage bucket (`cloudmastery-image`).
    3.  Select the `.vmdk` file you uploaded earlier: `ubuntu-vm.vmdk`.
    4.  Click **SELECT**.

*   **Region**: `us-central1`
    *   It's best practice to import the image into the same region where you plan to deploy the VM.

*   **Target project**: `eddie-ngugi-pawait-1`
    *   Ensure this is set to the correct project where you want the image to reside.

*   **Family**: `ubuntu-2204`
    *   Grouping images into families makes them easier to manage.

*   **Licenses**: Leave this as **Default**. GCP will automatically detect the OS.

*   **Advanced options (leave as default)**:
    *   Do not check "Skip OS adaptation," "Generalize," or "Convert BIOS to UEFI" unless you have a specific reason. The import tool handles these conversions well automatically.

![Configure Image Import](https://storage.googleapis.com/pawait-sitedocs/migration/gcp-configure-image-import.png)

4.  Click **CREATE**.

!!! info "Import in Progress"
    The image import process will begin. This can take anywhere from 10 to 30 minutes, or longer, depending on the size of the disk image. You can monitor the progress on the **Image imports** tab.

!!! success "Image Import Complete"
    Once the status shows as "Succeeded," you have successfully converted your on-prem disk into a reusable, bootable image in Google Cloud.

## What's Next

Now that you have a custom bootable image, you're ready for the final steps. In the next phase, you'll use this image to create a new VM instance in GCP.

---

<div class="page-nav">
  <div class="nav-item">
    <a href="../migration-create-vpc/" class="btn-secondary">← Previous: Create GCP VPC</a>
  </div>
  <div class="nav-item">
    <span><strong>Section 8</strong> - Import VMDK as GCP Image</span>
  </div>
  <div class="nav-item">
    <a href="../migration-create-vm/" class="btn-primary">Next: Create GCP VM Instance →</a>
  </div>
</div>