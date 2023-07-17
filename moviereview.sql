DROP DATABASE IF EXISTS  moviereview;
create database moviereview;
commit;
 
USE moviereview;

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL
);
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ReleaseYear INT,
    Director VARCHAR(255)
);
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    UserID INT,
    MovieID INT,
    Rating DECIMAL(3, 2),
    Comment TEXT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);


INSERT INTO Users (UserID, Username, Email)
VALUES (1, 'Tom', 'tom@email.com'),
       (2, 'Jerry', 'jerry@email.com'),
       (3, 'Mickey', 'mickey@email.com'),
       (4, 'Donald', 'donald@email.com'),
       (5, 'Minnie', 'minnie@email.com'),
       (6, 'Goofy', 'goofy@email.com'),
       (7, 'Daisy', 'daisy@email.com'),
       (8, 'Pluto', 'pluto@email.com'),
       (9, 'SnowWhite', 'snowwhite@email.com'),
       (10, 'Cinderella', 'cinderella@email.com');
INSERT INTO Movies (MovieID, Title, ReleaseYear, Director)
VALUES (1, 'The Godfather', 1972, 'Francis Ford Coppola'),
       (2, 'Pulp Fiction', 1994, 'Quentin Tarantino'),
       (3, 'Inception', 2010, 'Christopher Nolan'),
       (4, 'The Shawshank Redemption', 1994, 'Frank Darabont'),
       (5, 'The Matrix', 1999, 'The Wachowski Brothers'),
       (6, 'Interstellar', 2014, 'Christopher Nolan'),
       (7, 'Fight Club', 1999, 'David Fincher'),
       (8, 'Forrest Gump', 1994, 'Robert Zemeckis'),
       (9, 'The Dark Knight', 2008, 'Christopher Nolan'),
       (10, 'The Lord of the Rings: The Return of the King', 2003, 'Peter Jackson');
INSERT INTO Reviews (ReviewID, UserID, MovieID, Rating, Comment)
VALUES (1, 1, 1, 5, 'Amazing movie with great storytelling.'),
       (2, 2, 1, 4, 'Liked it but too long for me.'),
       (3, 3, 2, 4.5, 'Tarantino never disappoints!'),
       (4, 4, 2, 2, 'Too violent for my taste.'),
       (5, 5, 3, 4.5, 'Mind-bending thriller!'),
       (6, 6, 3, 3, 'Hard to follow.'),
       (7, 7, 4, 5, 'Inspiring story.'),
       (8, 8, 4, 4.5, 'Favorite prison drama.'),
       (9, 9, 5, 4, 'Keanu Reeves rocks!'),
       (10, 10, 5, 1, 'Did not like the sci-fi element.'),
       (11, 1, 6, 3, 'Decent space movie.'),
       (12, 2, 6, 4, 'Science and fiction well mixed.'),
       (13, 3, 7, 5, 'Pitt and Norton, what a duo!'),
       (14, 4, 7, 2, 'Too depressing.'),
       (15, 5, 8, 3.5, 'Enjoyed Tom Hanks performance.'),
       (16, 6, 8, 2, 'Too cheesy.'),
       (17, 7, 9, 4, 'Great superhero movie.'),
       (18, 8, 9, 5, 'Heath Ledger was incredible.'),
       (19, 9, 10, 4.5, 'Epic conclusion to the trilogy.'),
       (20, 10, 10, 2.5, 'Too long.');
       
