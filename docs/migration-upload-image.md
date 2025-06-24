# Uploading the Image to Google Cloud

In this phase, we'll upload the VMDK file you created in Phase 2 to your Google Cloud Storage bucket.

## Step 1: Set Your Active Project

Ensure you're working with the correct Google Cloud project by setting it explicitly:

```bash
gcloud config set project your-project-id
```

Replace `your-project-id` with your actual project ID (e.g., `eddie-ngugi-pawait-1`).

## Step 2: Upload the VMDK File to Google Cloud Storage

Use the `gcloud storage cp` command to upload your VMDK file to the bucket you created in Phase 3:

```bash
gcloud storage cp /mnt/imagedisk/ubuntu-vm.vmdk gs://your-bucket-name/
```

**Command Explanation:**

  - `/mnt/imagedisk/ubuntu-vm.vmdk`: The local path to your VMDK file
  - `gs://your-bucket-name/`: Your Google Cloud Storage bucket URL

### Alternative Upload Method

You can also use the traditional `gsutil` command:

```bash
gsutil cp /mnt/imagedisk/ubuntu-vm.vmdk gs://your-bucket-name/
```

## Step 3: Monitor Upload Progress

The upload process will show progress. For large files, this may take considerable time depending on your internet connection speed.

## Step 4: Verify the Upload

After the upload completes, verify that your file is in the bucket:

```bash
# List all files in your bucket
gsutil ls gs://your-bucket-name/

# Get detailed information about your uploaded file
gsutil ls -l gs://your-bucket-name/ubuntu-vm.vmdk
```

You should see your `ubuntu-vm.vmdk` file listed with its size and upload timestamp.

## Step 5: Verify via Google Cloud Console

You can also verify the upload through the web interface:

1. Go to the [Google Cloud Console](https://console.cloud.google.com)
2. Navigate to **Cloud Storage > Buckets**
3. Click on your bucket name
4. Verify that `ubuntu-vm.vmdk` appears in the file list

## Troubleshooting Upload Issues

### Common Problems and Solutions

**Issue**: Upload fails with authentication errors
**Solution**: Re-authenticate with `gcloud auth login`

**Issue**: Upload is very slow
**Solution**: 
- Check your internet connection
- Consider using `gsutil -m cp` for parallel uploads of multiple files
- Ensure no other heavy network activities are running

**Issue**: "Insufficient permissions" error
**Solution**: Ensure your account has Storage Admin or Storage Object Admin role for the bucket

**Issue**: Upload stops/fails partway through
**Solution**: The `gsutil cp` command is resumable - simply run the same command again to resume the upload

## What's Next

Once your VMDK file is successfully uploaded to Google Cloud Storage, you're ready to move to Phase 6 where we'll create a VPC network for your migrated application.

!!! success "Upload Complete"
    Your VM disk image is now safely stored in Google Cloud Storage and ready for the next phase of migration.

---

<div class="page-nav">
  <div class="nav-item">
    <a href="../migration-gcloud-cli/" class="btn-secondary">← Previous: Install & Configure gcloud CLI</a>
  </div>
  <div class="nav-item">
    <span><strong>Section 6</strong> -  Upload Image to GCS</span>
  </div>
  <div class="nav-item">
    <a href="../migration-create-vpc/" class="btn-primary">Next: Create GCP VPC →</a>
  </div>
</div>

---