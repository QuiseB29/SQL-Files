USE music_library;
CREATE TABLE Albums (
	id INT AUTO_INCREMENT PRIMARY
KEY,
	title VARCHAR(100) NOT NULL,
    genre_id INT,
    artist_id INT,
    album_id INT,
    release_year YEAR,
    total_tracks VARCHAR(100)
);

CREATE TABLE Genre (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Hip_Hop VARCHAR(100) NOT NULL,
    Latin VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES artist(id)
);


CREATE TABLE artist (
	id INT AUTO_INCREMENT PRIMARY
KEY,
	name VARCHAR(225) NOT NULL,
    birth_year YEAR,
    nationality VARCHAR(100)
);

