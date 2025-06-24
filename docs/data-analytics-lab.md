# Data to Dashboards: The Analytics Lab

Welcome to the Data Analytics & Visualization lab! In this section, you will build a complete, automated data pipeline on Google Cloud. This is a powerful, real-world pattern used to move data from operational databases into a data warehouse for analysis and reporting.

## Lab Overview

You will build a pipeline that:

1.  **Sets up a Destination**: You'll start by creating a home for your data in **BigQuery**, Google's serverless data warehouse.
2.  **Extracts & Transforms Data**: You'll write and deploy a **Cloud Function** that connects to a MySQL database, runs a SQL query to transform the data, and prepares it for loading.
3.  **Automates the Pipeline**: You'll use **Cloud Scheduler** to automatically run your function on a recurring schedule, ensuring your data warehouse stays up-to-date.
4.  **Visualizes the Insights**: Finally, you'll connect **Looker Studio** to your BigQuery data to build and customize an interactive dashboard.


## What's Next

Let's begin by setting up the foundation of our data pipeline: the BigQuery dataset and table.

---

<div class="page-nav">
  <div class="nav-item">
    <a href="../accessing-the-application/" class="btn-secondary">← Previous: Accessing the Application</a>
  </div>
  <div class="nav-item">
    <span><strong>Section 20</strong> - Analytics Lab</span>
  </div>
  <div class="nav-item">
    <a href="../data-pipeline-setup-bigquery/" class="btn-primary">Next: Setup BigQuery →</a>
  </div>
</div>