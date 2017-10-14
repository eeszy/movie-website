CREATE TABLE Movie(
	id INT NOT NULL,
	title VARCHAR(100) NOT NULL,
	year INT,
	rating VARCHAR(10),
	company VARCHAR(50),
    PRIMARY KEY(id),	#A movie must have a unique id
    CHECK(LENGTH(title) > 0)	#every movie must have a title
)ENGINE=INNODB;

CREATE TABLE Actor(
	id INT NOT NULL,
	last VARCHAR(20),
	first VARCHAR(20),
	sex VARCHAR(6),
	dob DATE, 
	dod DATE,
    PRIMARY KEY(id),
    CHECK(dob IS NOT NULL),	#every actor must have a dob
    CHECK(dod IS NULL OR dob < dod),	#every actor must either not have a dod or have a dod later than dob
    CHECK((last IS NOT NULL AND LENGTH(last) > 0) or (first IS NOT NULL AND LENGTH(first) > 0)) #every actor must have a last/first name
)ENGINE=INNODB;

CREATE TABLE Sales(
	mid INT NOT NULL,
	ticketsSold INT,
	totalIncome INT
)ENGINE=INNODB;

CREATE TABLE Director(
	id INT,
	last VARCHAR(20),
	first VARCHAR(20),
	dob DATE,
	dod DATE,
    PRIMARY KEY(id),	#A director must have a unique id
    CHECK(dob IS NOT NULL),	#every director must have a dob
    CHECK(dod IS NULL OR dob < dod),	#every director must either not have a dod or have a dod later than dob
    CHECK((last IS NOT NULL AND LENGTH(last) > 0) or (first IS NOT NULL AND LENGTH(first) > 0))	#every director must have a last/first name
)ENGINE=INNODB;

CREATE TABLE MovieGenre(
	mid INT NOT NULL,
	genre VARCHAR(20),
    FOREIGN KEY (mid) references Movie(id)	#A mid must reference a valid movie id
)ENGINE=INNODB;

CREATE TABLE MovieDirector(
	mid INT,
	did INT,
    FOREIGN KEY (mid) references Movie(id),	#A mid must reference a valid movie id
    FOREIGN KEY (did) references Director(id)	#A aid must reference a valid actor id
)ENGINE = INNODB;

CREATE TABLE MovieActor(
	mid INT NOT NULL,
	aid INT NOT NULL,
	role VARCHAR(50),
    UNIQUE(mid, aid),	#mid and aid must be unique. No actor can have two roles in the same movie
    FOREIGN KEY (mid) references Movie(id),	#A mid must reference a valid movie id
    FOREIGN KEY (aid) references Actor(id)	#A aid must reference a valid actor id
)ENGINE = INNODB;

CREATE TABLE MovieRating(
	mid INT NOT NULL,
	imdb INT,
	rot INT
)ENGINE = INNODB;

CREATE TABLE Review(
	name VARCHAR(20),
	time TIMESTAMP,
	mid INT NOT NULL,
	rating INT,
	comment VARCHAR(500),
    UNIQUE(name, time , mid),	#A review must have unique reviewer name, time and mid
    FOREIGN KEY (mid) references Movie(id)	#A mid must reference a valid movie id
)ENGINE = INNODB;

CREATE TABLE MaxPersonID(
	id INT NOT NULL
)ENGINE = INNODB;

CREATE TABLE MaxMovieID(
	id INT NOT NULL
)ENGINE = INNODB;
