# ETL Pipeline: Azure Data Factory (ADF) & Snowflake  

## 📌 Project Overview
This project implements an end-to-end **ETL (Extract, Transform, Load) pipeline** using **Azure Data Factory (ADF) and Snowflake**. It extracts customer order data from an **Azure SQL Database**, processes it in **Azure Blob Storage**, and loads it into **Snowflake** for analytics.

### 🚀 **Key Features**
- **Data Extraction:** Orders are extracted from an **Azure SQL Database**.
- **Data Loading:** Extracted data is temporarily stored in **Azure Blob Storage**.
- **Data Transformation & Load:** ADF processes and loads the data into **Snowflake**.
- **Performance Optimization:** Partitioning and indexing for faster analytics.
- **Data Validation:** Python script verifies the data in Snowflake.

---

## 📁 **Project Structure**
```
ETL_Customer_Orders_ADF_Snowflake/
│── README.md                      # Project documentation  
│── data/  
│   ├── sample_orders.csv           # Sample order data  
│── adf_pipelines/  
│   ├── export_orders_to_blob.json  # ADF pipeline: Export data to Blob Storage  
│   ├── transform_load_snowflake.json # ADF pipeline: Load data into Snowflake  
│── sql/  
│   ├── create_snowflake_tables.sql # Snowflake table creation  
│   ├── azure_sql_export.sql        # Export data from Azure SQL  
│── src/  
│   ├── config.py                   # Configuration settings  
│   ├── validate_snowflake_data.py  # Python script to validate Snowflake data  
│── docs/  
│   ├── architecture_diagram.png    # High-level architecture diagram  
```

---

## 🏗 **ETL Pipeline Architecture**
![ETL Architecture](docs/architecture_diagram.png)

1. **Extract**: ADF extracts customer order data from **Azure SQL Database**.
2. **Load to Blob**: Data is stored as a CSV file in **Azure Blob Storage**.
3. **Transform & Load**: ADF processes the data and loads it into **Snowflake**.
4. **Validation**: A Python script verifies the data in Snowflake.

---

## ⚡ **Technologies Used**
- **Azure Data Factory (ADF)** → Orchestration  
- **Azure SQL Database** → Source Database  
- **Azure Blob Storage** → Staging Layer  
- **Snowflake** → Data Warehouse  
- **Python** → Data Validation  

---

## 📜 **Setup & Execution**
### 1️⃣ **Clone the Repository**
```sh
git clone https://github.com/your-username/ETL_Customer_Orders_ADF_Snowflake.git
cd ETL_Customer_Orders_ADF_Snowflake
```

### 2️⃣ **Setup Azure Resources**
- Create an **Azure SQL Database** and load sample data.
- Set up an **Azure Blob Storage** container.
- Deploy **ADF pipelines** from `adf_pipelines/`.

### 3️⃣ **Run SQL Scripts**
#### ✅ **Create Snowflake Tables**
```sh
snowsql -q "SOURCE sql/create_snowflake_tables.sql"
```

#### ✅ **Export Data from Azure SQL**
Run the script `azure_sql_export.sql` to extract data.

### 4️⃣ **Run Python Validation Script**
```sh
python src/validate_snowflake_data.py
```

---

## 📊 **Sample Data (`sample_orders.csv`)**
```csv
order_id,customer_id,order_date,amount
1,101,2024-01-10,500.00
2,102,2024-01-11,200.00
3,103,2024-01-12,300.00
```

---

## 🎯 **Expected Output**
- Data successfully extracted from Azure SQL and stored in Blob.
- Data transformed and loaded into **Snowflake**.
- Validation script confirms the **correct record count**.

---

## 📌 **Future Enhancements**
✅ Implement **incremental data loading**  
✅ Add **error handling & logging** in ADF  
✅ Optimize **Snowflake queries** for performance  

---
