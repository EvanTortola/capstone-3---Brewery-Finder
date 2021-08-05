BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
Drop TABLE IF EXISTS brewery;
DROP SEQUENCE IF EXISTS seq_user_id;

CREATE SEQUENCE seq_user_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;


CREATE TABLE users (
	user_id int DEFAULT nextval('seq_user_id'::regclass) NOT NULL,
	username varchar(50) NOT NULL,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE brewery (
brewery_id serial,
brewery_name varchar(50) NOT NULL,
street varchar(50) NOT NULL,
city varchar(50) NOT NULL,
state varchar(50) NOT NULL,
zip_code varchar(10) NOT NULL,
phone varchar(15) NOT NULL,
history text NOT NULL,
hours_of_operation text NOT NULL,
image text NOT NULL

);




COMMIT TRANSACTION;
