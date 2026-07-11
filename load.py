import pandas as pd
from sqlalchemy import create_engine

# Konfigurasi PostgreSQL
DB_USER = "postgres"
DB_PASS = "123456"
DB_HOST = "localhost"
DB_PORT = "5432"
DB_NAME = "sales_analysis"

engine = create_engine(
    f"postgresql://{DB_USER}:{DB_PASS}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
)

# Baca Excel
df = pd.read_excel("dataset/Superstore.xlsx")

df.to_csv("store.csv", index=False)




# # Bersihkan nama kolom
# df.columns = (
#     df.columns
#       .str.strip()
#       .str.lower()
#       .str.replace(r'[^a-zA-Z0-9]+', '_', regex=True)
# )

# print(df.columns)
# print(df.head())

# # Buat tabel baru + isi data
# df.to_sql(
#     "sales_data",
#     engine,
#     if_exists="replace",
#     index=False
# )

# print("Selesai!")