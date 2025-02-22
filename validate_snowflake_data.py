import snowflake.connector
from config import SNOWFLAKE_CONFIG

def validate_data():
    conn = snowflake.connector.connect(**SNOWFLAKE_CONFIG)
    cursor = conn.cursor()
    cursor.execute("SELECT COUNT(*) FROM orders_analytics;")
    count = cursor.fetchone()[0]
    print(f"Total processed orders in Snowflake: {count}")

if __name__ == "__main__":
    validate_data()
