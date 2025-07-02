# 2. Create the Cloud Function (ETL)

This Cloud Function is the engine of our pipeline. It will run a Python script to connect to a MySQL database, execute a query to denormalize and fetch data, and then load that data into our BigQuery table, overwriting the previous contents.

## Prerequisites

*   **Enabled APIs:** Ensure Cloud Functions, Cloud Build, Artifact Registry, and BigQuery APIs are enabled.
*   **MySQL Credentials:**
    *   `DB_USER`: `student`
    *   `DB_PASS`: your project name (e.g., `john-doe-pawait-1`)
    *   `DB_NAME`: `cloud_mastery`
    *   `DB_HOST`: your Cloud SQL instance's public IP address.
*   **BigQuery Table ID:** You need an existing BigQuery Dataset and table where the pipeline will load the data from our first step.

    * `BQ_TABLE_ID` = `john-higi-pawait-1.john_higi_pawait_1.cloud_mastery`

## Step 1: Prepare Your Code

Your function needs a `main.py` file for the logic and a `requirements.txt` for dependencies.

**`main.py`**
```python
import os
import pandas as pd
import pymysql
from google.cloud import bigquery

def denormalize_and_load(request):
    # Load credentials from environment variables
    db_user = os.environ['DB_USER']
    db_pass = os.environ['DB_PASS']
    db_name = os.environ['DB_NAME']
    db_host = os.environ['DB_HOST']
    table_id = os.environ['BQ_TABLE_ID']

    # SQL query to join tables and create a denormalized view
    query = """
    SELECT
        o.id AS order_id,
        o.orderNumber,
        CONCAT(c.firstName, ' ', c.lastName) AS customer_name,
        c.email,
        o.orderDate,
        od.product_id,
        p.name AS product_name,
        p.category,
        od.quantity,
        od.unitCost,
        od.totalCost,
        o.status,
        o.paymentMethod
    FROM orders o
    JOIN customers c ON o.customer_id = c.id
    JOIN order_details od ON o.id = od.order_id
    JOIN products p ON od.product_id = p.id
    """

    # Establish connection and fetch data into a pandas DataFrame
    connection = pymysql.connect(host=db_host, user=db_user, password=db_pass, database=db_name, port=3306)
    df = pd.read_sql(query, connection)
    connection.close()

    # Ensure data types are correct for BigQuery
    if 'orderDate' in df.columns:
        df['orderDate'] = pd.to_datetime(df['orderDate'])

    # Load DataFrame into BigQuery
    client = bigquery.Client()
    job_config = bigquery.LoadJobConfig(
        write_disposition=bigquery.WriteDisposition.WRITE_TRUNCATE,
        autodetect=True
    )

    job = client.load_table_from_dataframe(df, table_id, job_config=job_config)
    job.result()  # Wait for the job to complete

    return f"Loaded {len(df)} rows to {table_id}."
```

**`requirements.txt`**
```text
functions-framework==3.*
pandas==2.2.2
SQLAlchemy==2.0.30
PyMySQL==1.1.0
google-cloud-bigquery==3.21.0
pyarrow==20.0.0
```


---

<div class="page-nav">
  <div class="nav-item">
    <a href="../data-pipeline-setup-bigquery/" class="btn-secondary">← Previous: Setup BigQuery</a>
  </div>
  <div class="nav-item">
    <span><strong>Section 22</strong>  - Create Cloud Function</span>
  </div>
  <div class="nav-item">
<a href="../data-pipeline-schedule-job/" class="btn-primary">Next: Schedule with Cloud Scheduler →</a>
</div>
</div>