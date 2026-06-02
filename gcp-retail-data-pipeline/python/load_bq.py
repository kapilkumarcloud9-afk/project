
from google.cloud import bigquery

client = bigquery.Client()
table_id = "project_id.retail.sales"

job = client.load_table_from_uri(
    "gs://retail-bucket/sales.csv",
    table_id
)
job.result()
print("Loaded")
