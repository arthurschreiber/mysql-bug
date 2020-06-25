CREATE DATABASE menagerie;

CREATE TABLE menagerie.pet (name VARCHAR(20), owner VARCHAR(20),
species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);

CREATE TABLE menagerie.other_pet (name VARCHAR(20), owner VARCHAR(20),
species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);

CREATE USER 'user1'@'%' IDENTIFIED BY 'password';
CREATE USER 'user2'@'%' IDENTIFIED BY 'password';

GRANT SELECT ON menagerie.pet TO 'user1'@'%';
GRANT SELECT ON menagerie.other_pet TO 'user2'@'%';
