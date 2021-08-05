BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS brewery;
DROP TABLE IF EXISTS beer;
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
        image text NOT NULL,
        
        CONSTRAINT PK_brewery PRIMARY KEY (brewery_id)

);

CREATE TABLE beer (
        beer_id serial,
        brewery_id int NOT NULL,
        name varchar(50) NOT NULL,
        type varchar(50) NOT NULL,
        description text NOT NULL,
        img_url text NOT NULL,
        abv decimal NOT NULL,

        CONSTRAINT PK_beer PRIMARY KEY (beer_id),      
        CONSTRAINT FK_beer_brewery FOREIGN KEY (brewery_id) REFERENCES brewery (brewery_id)
);
        






INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');


COMMIT TRANSACTION;
