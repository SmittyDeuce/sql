CREATE DATABASE music_library_db;

use music_library_db;

CREATE TABLE artists (
	artist_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255),
    record_label VARCHAR(255)
);

CREATE TABLE genre (
	genre_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE albums (
	album_id INT AUTO_INCREMENT PRIMARY KEY, 
    title VARCHAR(255) NOT NULL,
    total_duration time NOT NULL,
    release_year INT NOT NULL,
    total_tracks INT NOT NULL,
    artist_id INT,
    genre_id INT,
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id),
    FOREIGN KEY (genre_id) REFERENCES genre (genre_id)
);
    
 
select * from albums;
    
INSERT into artists (first_name, last_name, record_label)
values
	("Nascar", "Aloe", "Epitah Records"),
	("$uicideBoy$", NULL, "G59 Records"),
	("Ramierz", NULL, "G59 Records"),
	("Zillakami", NULL, "Republic Records"),
	("Ghostemane", NULL, "Blackmage Records"),
	("Lil", "Peep","First Access Entertainment");

UPDATE artists
set first_name = "Ramirez"
where first_name = "Ramierz";

INSERT INTO genre (name)
VALUES
("Alternative Rap and Punk Rock");


select *from genre;

set @artist_id = 6;
set @genre_id = 4;

INSERT INTO albums (title, total_duration, release_year, total_tracks, artist_id, genre_id)
VALUES
('HELLBOY', '00:47:00', 2016, 17, @artist_id, @genre_id);

SELECT * from albums;