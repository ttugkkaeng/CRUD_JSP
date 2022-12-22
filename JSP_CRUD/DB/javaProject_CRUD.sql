CREATE DATABASE db01;

USER db01;

DROP TABLE lib;

CREATE TABLE lib (
	lib_index VARCHAR(500) NOT NULL,
	lib_name VARCHAR(500) NOT NULL,
	lib_code VARCHAR(500) NOT NULL,
	ad_name VARCHAR(500) NOT NULL,
	address VARCHAR(500) NOT NULL,
	phone VARCHAR(500),
	url VARCHAR(500) NOT NULL,
	lib_time VARCHAR(600) NOT NULL,
	holiday VARCHAR(500) NOT NULL,
	devision VARCHAR(500) NOT NULL,
	dev_name VARCHAR(500) NOT NULL,
	lat VARCHAR(500),
	longitude VARCHAR(500),
	PRIMARY KEY(lib_index)
);

GRANT ALL PRIVILEGES ON db01 TO root@'localhost' IDENTIFIED BY 'user';