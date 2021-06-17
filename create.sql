DROP TABLE IF EXISTS books_subjects;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS publisher;
CREATE TABLE publisher(
	id INTEGER PRIMARY KEY,
	name varchar(50) NOT NULL,
	country varchar(50) NOT NULL);

CREATE TABLE books(
	id INTEGER PRIMARY KEY,
	title varchar(50) NOT NULL,
	publisher INTEGER NOT NULL,
       	FOREIGN KEY(publisher) REFERENCES publisher(id) ON DELETE CASCADE);

CREATE TABLE subjects(
	id INTEGER PRIMARY KEY,
	name varchar(50) NOT NULL);

CREATE TABLE books_subjects(
	book INTEGER NOT NULL,
	subject INTEGER NOT NULL,
		FOREIGN KEY(book) REFERENCES books(id) ON DELETE CASCADE,
		FOREIGN KEY(subject) REFERENCES subjects(id) ON DELETE CASCADE);
