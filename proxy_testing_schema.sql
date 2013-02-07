-- Needed: database schema
-- Proxies
-- Domains
-- Tests (like a cross-product of the two)

CREATE TABLE Proxies (
	--MySQL: id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id INTEGER PRIMARY KEY,
	last_test datetime,
	address char(255),
	interest int
);

CREATE TABLE Domains (
	--MySQL: id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id INTEGER PRIMARY KEY,
	address char(255)
);

CREATE TABLE Tests (
	p_id int REFERENCES Proxies(id),
	d_id int REFERENCES Domains(id),
	test_time datetime,
	reached bool,
	final_url char(255)
);
