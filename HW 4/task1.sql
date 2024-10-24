DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;

CREATE TABLE petPet (
  petname VARCHAR(20),
  owner VARCHAR(45),
  species VARCHAR(45),
  gender VARCHAR(1) CHECK (gender = 'M' or gender = 'F'),
  birth DATE,
  death DATE,
  PRIMARY KEY (petname) -- put after the attribute definitions no comma for the last attr as well
);

CREATE TABLE petEvent (
  petname VARCHAR(20),
  eventdate DATE,
  eventtype VARCHAR(15),
  remark VARCHAR(255),
  PRIMARY KEY (eventdate, petname),
  FOREIGN KEY (petname) REFERENCES petPet(petname) -- no comma for last attr btw
);