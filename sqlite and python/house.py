import csv
from cs50 import SQL

open("Greenhouse_db.db",'w').close()
database=SQL("sqlite:///Greenhouse_db.db")
database.execute("CREATE TABLE region(id INTEGER PRIMARY KEY,region TEXT,category TEXT)")
database.execute("CREATE TABLE decription(region_id INTEGER,anzsic_descriptor TEXT,FOREIGN KEY (region_id) REFERENCES region(id))")
#database.execute("ALTER TABLE decription ADD FOREIGN KEY (region_id) REFERENCES region(id)")

with open("Greenhouse.csv","r") as csvfile:
    reader=csv.DictReader(csvfile)
    for row in reader:
        region=row["region"].strip().capitalize();category=row["category"].strip().capitalize()
        database.execute("INSERT INTO region(region,category) VALUES(?,?)",region,category)

        for decription in row["anzsic_descriptor"].split(","):
            anzsic_descriptor=decription.strip().capitalize()
            database.execute("INSERT INTO decription(region_id,anzsic_descriptor) VALUES((SELECT id FROM region WHERE region=?),?)",region,decription)

    
