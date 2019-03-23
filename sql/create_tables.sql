create table Users (
	id int AUTO_INCREMENT,
	username varchar(250),
	email varchar(250),
	password varchar(250),
	fullname varchar(250),
	dob date,
	PRIMARY KEY (id)
);

create table Posts(
	id int AUTO_INCREMENT,
	title varchar(250),
	body text,
	publishDate date,
	userID int,
	PRIMARY KEY (id),
	FOREIGN KEY (userID) REFERENCES Users(id)
);