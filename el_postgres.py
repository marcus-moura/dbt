import os
import pandas as pd
from sqlalchemy import create_engine
from getpass import getpass

base = os.getcwd()
path_tables = os.path.join(base, 'tables')
tables = os.listdir(path_tables)
user = os.environ['User']
password = getpass('Password: ')

conection = create_engine(f'postgresql+psycopg2://{user}:{password}\@localhost:5432/postgres')

for table in tables:
    path = os.path.join(path_tables, table)
    table_name = table.replace(".csv", "")
    df = pd.read_csv(path,encoding='ISO-8859-1')
    
    print(f"Ingestion table: {table_name}.")
    df.to_sql(name=table_name,schema='bronze',con=conection,index=False,if_exists='replace',)