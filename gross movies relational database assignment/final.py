import csv
from cs50 import SQL

open("movies.db", "w").close()# open the database
database = SQL("sqlite:///movies.db")
"""
creating the tables
"""
database.execute("CREATE TABLE movies (movies_id INTEGER, title TEXT, PRIMARY KEY(movies_id))")
database.execute("CREATE TABLE genre_movies(genres_id INTEGER,movie_id INTEGER, PRIMARY KEY(genres_id),FOREIGN KEY(movie_id) REFERENCES movies(movies_id))")
database.execute("CREATE TABLE genres (genre_id INTEGER, genre TEXT, PRIMARY KEY(genre_id),FOREIGN KEY(genre_id) REFERENCES genre_movies(genres_id))")

with open("gross movies.csv", "r") as file:# opening the csv file
    reader = csv.DictReader(file)
    for row in reader:
        title = row["Film"].strip().capitalize()
        database.execute("INSERT INTO movies (title) VALUES (?)", title)# inserting the title into the movies table
        
        for Genre in row["Genre"].split(","):
            types = Genre.strip().capitalize()# getting the genre
            genre_id=database.execute("INSERT INTO genre_movies (movie_id) VALUES ((SELECT movies_id FROM movies WHERE title=?))",title)# inserting the movie_id into the genre_movies table
            genre=database.execute("INSERT INTO genres(genre_id,genre) VALUES ((SELECT genres_id FROM genre_movies WHERE movie_id=?),?)",genre_id,types)# inserting the genre into the genres table
            
            


 