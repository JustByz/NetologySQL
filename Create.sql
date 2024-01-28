CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Performers (
	id SERIAL PRIMARY KEY ,
	performer_name VARCHAR (80) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS GenrePerformer (
	genre_id INTEGER REFERENCES Genre (id),
	performer_id INTEGER REFERENCES Performers (id),
	CONSTRAINT pk PRIMARY KEY (genre_id, performer_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY ,
	album_name VARCHAR (80) NOT NULL UNIQUE ,
	album_year SMALLINT NOT NULL CHECK(album_year > 1900)
);

CREATE TABLE IF NOT EXISTS PerformersAlbums (
	performer_id INTEGER REFERENCES Performers (id),
	album_id INTEGER REFERENCES Albums (id),
	CONSTRAINT pk1 PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF	NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY ,
	track_name VARCHAR (80),
	track_duration INTEGER CHECK (track_duration > 0 AND track_duration < 48212),
	album_id INTEGER REFERENCES Albums (id)
);

CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY ,
	collection_name VARCHAR (80) NOT NULL UNIQUE ,
	collection_year SMALLINT NOT NULL CHECK (collection_year > 1900)
);
CREATE TABLE IF NOT EXISTS TracksCollections (
	track_id INTEGER REFERENCES Tracks (id),
	collection_id INTEGER REFERENCES Collections (id),
	CONSTRAINT pk3 PRIMARY KEY (track_id, collection_id)
);