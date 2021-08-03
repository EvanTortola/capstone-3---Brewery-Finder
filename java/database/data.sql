BEGIN TRANSACTION;

DROP TABLE IF EXISTS brewery CASCADE;

CREATE TABLE brewery (
brewery_id serial,
brewery_name varchar(50) NOT NULL,
street varchar(50) NOT NULL,
city varchar(50) NOT NULL,
state varchar(50) NOT NULL,
phone varchar(15) NOT NULL,
description text NOT NULL
);

INSERT INTO brewery (brewery_name, street, city, state, phone, description)
VALUES('BottleHouse Brewery', '13368 Madison Ave', 'Lakewood', 'Ohio', '216-926-0025',
'Brewery and Meadery');

INSERT INTO brewery (brewery_name, street, city, state, phone, description)
VALUES ('Sibling Revelry Brewing', '29305 Clemens Rd', 'Westlake', 'Ohio', '440-471-8589', 'Awesome atmosphere, great drinks, friendly staff, and tons of games.'
);

COMMIT;
           

