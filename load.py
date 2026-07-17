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


