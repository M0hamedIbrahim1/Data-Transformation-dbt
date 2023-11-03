# Data-Transformation Using dbt (Snowflake DWH)

![analytics-engineering-dbt](https://github.com/M0hamedIbrahim1/Data-Transformation-dbt/blob/main/DAGS/analytics-engineering-dbt.png)
This project contains a set of dbt models for transforming and analyzing sales and production data. The project is structured as follows:

- **Data Warehouse**: This project utilizes Snowflake as the data warehouse for storing and querying data.

- **Data Sources**: Data is sourced from two Schema: `SALES` and `PRODUCTION`, which contain tables related to sales and production, respectively.
- **dbt**: to transform and model data for insightful analytics. We create and maintain SQL models that enable us to efficiently extract meaningful insights from our data sources. 
# DAG Lineage

The Directed Acyclic Graph (DAG) below represents the lineage of dbt models in this project. It illustrates the flow of data and dependencies between different models, providing a visual overview of how data is transformed and processed.

![Screenshot_1](https://github.com/M0hamedIbrahim1/Data-Transformation-dbt/blob/main/DAGS/Screenshot_1.png)
The DAG shows the relationships between models, with arrows indicating the flow of data from source to destination. This lineage is essential for understanding the sequence of transformations and how each model contributes to the final analysis.

- **Models**:
  - `Customer_TotalSales.sql`: Calculates the total sales for each customer.
  - `Customers_Orders.sql`: Joins customer and order information.
  - `Product_ITEMOrders.sql`: Links products with orders.
  - `Products_orders.sql`: Calculates the number of orders for each product.
  - `Stores_Orders.sql`: Aggregates sales data by store.
  - `Top_10Customers.sql`: Lists the top 10 customers by total sales.
  - 
dbt is a powerful tool for developing, testing, documenting, and deploying data pipelines,
Feel free to connect with me on LinkedIn

[![LinkedIn](https://img.shields.io/badge/Connect%20on-LinkedIn-blue?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/mohamed-ibrahim-513531202/)
