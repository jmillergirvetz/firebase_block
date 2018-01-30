connection: "bigquery-ozobot-data"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

label: "Shopify Data"

explore: orders {}

explore: transactions {}
