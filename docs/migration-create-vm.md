# Create a Google Cloud VM Instance

With your custom image ready and your VPC configured, it's time to create the new virtual machine that will run your migrated application.

## Step 1: Create a New Instance

1.  In the Google Cloud Console, navigate to **Compute Engine** > **VM instances**.
2.  Click the **[+] CREATE INSTANCE** button at the top of the page.

## Step 2: Configure the VM Instance

Fill out the configuration details for your new VM.

*   **Name**: `pawait-vm-gcp-final` (or another descriptive name).

*   **Region and Zone**:
    *   **Region**: `us-central1` (Choose the same region as your VPC).
    *   **Zone**: Select any zone within that region, for example, `us-central1-c`.

*   **Machine configuration**:
    *   **Series**: `E2`
    *   **Machine type**: `e2-medium` (2 vCPU, 4 GB memory).
!!! tip "Tip"
    Try to select a machine type that closely matches the CPU and RAM of your original on-prem VM. You can always resize it later.

### Configure the Boot Disk

This is the most critical part of the configuration. You will tell GCP to use the custom image you created in the previous phase.

1.  In the **Boot disk** section, click the **CHANGE** button.
2.  A new panel will open. Click on the **CUSTOM IMAGES** tab.
3.  From the **Image** dropdown list, select the image you just created: `cloud-mastery-image`.
4.  The **Boot disk type** and **Size (GB)** will default based on the image. You can increase the size if needed.
5.  Click **Select**.

![Configure Custom Boot Disk](https://storage.googleapis.com/pawait-sitedocs/migration/gcp-select-custom-image.png)

### Configure Networking and Firewall

1.  Expand the **Advanced options** section.
2.  Click on **Networking**.
3.  Under **Network interfaces**, ensure the following is selected:
    *   **Network**: `my-cloud-mastery-vpc`
    *   **Subnetwork**: `application-subnet`
4.  Under **Firewall**, check the boxes for:
    *   `Allow HTTP traffic`
    *   `Allow HTTPS traffic`

5.  Review all the settings and click the **CREATE** button at the bottom of the page.

![Create VM Instance](https://storage.googleapis.com/pawait-sitedocs/migration/gcp-create-final-vm.png)

!!! success "VM Instance Created"
    Your new virtual machine will now be provisioned and started. Once it's running, you will see a green checkmark next to its name in the VM instances list, and it will have both an Internal and an External IP address.

## What's Next

Your migrated VM is now running in the cloud! The next step is to access it, restart the necessary services, and verify that your application is working correctly.

---

<div class="page-nav">
  <div class="nav-item">
    <a href="../migration-import-image/" class="btn-secondary">← Previous: Import VMDK as Image</a>
  </div>
  <div class="nav-item">
    <span><strong>Section 9</strong> - Create GCP VM Instance</span>
  </div>
  <div class="nav-item">
    <a href="../migration-access-vm/" class="btn-primary">Next: Access & Configure VM →</a>
  </div>
</div>