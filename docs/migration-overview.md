# Application Migration to Google Cloud Platform - Overview

This comprehensive guide will walk you through the process of creating an exact, bootable copy (a "clone") of a live on-premises Linux virtual machine (VM) and migrating it to a new, running VM in Google Cloud Platform (GCP).

## Migration Strategy

We will use a safe and reliable method that involves attaching a temporary "helper" disk to your on-premises VM. This ensures we don't accidentally fill up the main operating system disk, which could crash the machine.

!!! info "Analogy"
    Instead of doing a messy construction project inside your kitchen while you're cooking, we're going to build everything in the garage (the temporary disk) and only move the finished product.

## Migration Process Overview

The migration process consists of 10 phases:

1. **Phase 1**: Preparing the On-Premises VM for Cloning
2. **Phase 2**: Creating the Virtual Disk Image (VMDK)
3. **Phase 3**: Create a Google Cloud Storage Bucket
4. **Phase 4**: Install Google Cloud CLI and Authenticate
5. **Phase 5**: Uploading the Image to Google Cloud
6. **Phase 6**: Create a Google Cloud VPC
7. **Phase 7**: Import the VMDK as a Bootable GCP Image
8. **Phase 8**: Creating the New Virtual Machine
9. **Phase 9**: Access the New Virtual Machine
10. **Phase 10**: Change the DNS Records

## Prerequisites

Before you begin, ensure you have the following:

- **On-Premises VM Access**: You need to be able to log into your on-premises Linux VM via SSH and have sudo (administrator) privileges
- **On-Premises Provider Access**: You need the ability to contact your service provider to request that a new, temporary disk be attached to your VM if possible. For our case, this additional storage is allocated to the source virtual machine as an additional Local Disk
- **Google Cloud Platform (GCP) Account**: You need a GCP account with an active project and billing enabled
- **A Google Cloud Storage (GCS) Bucket**: You need a GCS bucket already created to store the disk image file
- **SSH Client**: You will need an SSH client on your local device to access the Linux Virtual Machine via SSH

## Tools Required

Throughout this migration, we will use several tools:

- **SSH Client**: We recommend Termius, which is a cross-platform SSH client and terminal emulator available for laptops, desktop, and mobile devices. You can learn how to install and set up Termius from [here](https://termius.com/documentation/installation)
- **QEMU Utilities**: For disk format conversion
- **Google Cloud CLI**: For authentication and file uploads
- **Google Cloud Console**: For managing GCP resources


!!! warning "Important"
    The disk imaging process (Phase 2) will take the longest time due to the size of the disk. Plan accordingly and ensure you have a stable connection throughout the process.

## What You'll Achieve

By the end of this migration guide, you will have:

- Successfully cloned your on-premises VM to Google Cloud Platform
- Created a properly configured GCP environment with VPC and firewall rules
- Deployed your application on GCP with the same functionality as the original
- Updated DNS records to point to the new GCP-hosted application
- A fully operational application running on Google Cloud infrastructure

---

<div class="page-nav">
  <div class="nav-item">
    <a href="../introduction/" class="btn-secondary">← Previous: Introduction</a>
  </div>
  <div class="nav-item">
    <span><strong>Section 1</strong> - Application Migration to GCP</span>
  </div>
  <div class="nav-item">
    <a href="../migration-prepare-vm/" class="btn-primary">Next: Prep On-Prem VM →</a>
  </div>
</div>

---