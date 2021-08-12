BEGIN TRANSACTION;

DROP TABLE IF EXISTS brewery_users;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS beer;
DROP TABLE IF EXISTS update;
DROP TABLE IF EXISTS brewery;
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
        abv varchar NOT NULL,
        is_active boolean NOT NULL,

        CONSTRAINT PK_beer PRIMARY KEY (beer_id),      
        CONSTRAINT FK_beer_brewery FOREIGN KEY (brewery_id) REFERENCES brewery (brewery_id)
);
        
CREATE TABLE review (
        review_id serial,
        beer_id int NOT NULL,        
        beer_name varchar(150) NOT NULL,
        user_experience varchar(450),
        beer_rating int NOT NULL,
        date_time varchar(25) NOT NULL, --I'm iffy on this not having to be seperated into date and time data types like in the Meetups event table start_date and start_time
        
        CONSTRAINT PK_review PRIMARY KEY (review_id),
        CONSTRAINT FK_review_beer FOREIGN KEY (beer_id) REFERENCES beer (beer_id)
);

CREATE TABLE update (
        update_id serial,
        brewery_id int NOT NULL,
        brewery_name varchar(50) NOT NULL,
        update text NOT NULL,
        CONSTRAINT PK_update PRIMARY KEY (update_id),
        CONSTRAINT FK_update_brewery FOREIGN KEY (brewery_id) REFERENCES brewery (brewery_id)
);
CREATE TABLE brewery_users (
        brewery_id int NOT NULL,
        user_id int NOT NULL,
        CONSTRAINT PK_brewery_users PRIMARY KEY (brewery_id, user_id),
        CONSTRAINT FK_brewery_users_brewery FOREIGN KEY (brewery_id) REFERENCES brewery (brewery_id),
        CONSTRAINT FK_brewery_users_users FOREIGN KEY (user_id) REFERENCES users (user_id)
);

COMMIT TRANSACTION;
