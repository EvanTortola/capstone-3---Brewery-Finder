BEGIN TRANSACTION;

DROP TABLE IF EXISTS brewery CASCADE;

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

INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
VALUES('BottleHouse Brewery', '13368 Madison Ave', 'Lakewood', 'Ohio', '44107', '216-926-0025','As we move through year 9 our passion for the art of beer, mead and cider making increases daily.  Through our 3 taprooms (Cleveland Heights, Lakewood, Shaker Heights), we have been able to share our passions and our products without distributing our beer to retail stores.  This model allows us to stay true to our belief that communities deserve a welcoming place to gather and share life over a well-made beer.
',
 'Mon: Closed, Tue-Thur: 5:00pm-12:00am, Fri: 5:00pm-2:00am, Sat: 2:00pm-2:am, Sun: 2:00pm-10:00pm', 'https://golakewood.com/wp-content/uploads/2019/03/bottlehouse-brewery-1280x640.jpg'

);

INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
VALUES ('Sibling Revelry Brewing', '29305 Clemens Rd', 'Westlake', 'Ohio', '44145', '440-471-8589', 'Our taproom is where family and friends meet to grab a brew, talk about Cleveland sports and relax after a long day at the office. Unwind at our bar and enjoy a view of our brewhouse, or relive your childhood and play a board game. Weather permitting, enjoy a cold brew on the outdoor patio, perfect for friends and pups alike. For the constantly-connected, we offer free Wi-Fi and USB wall plugs to charge all of your devices.
',
'Mon: Closed, Tue-Fri: 4:00pm-9:00pm, Sat: 12:00pm-9:00pm, Sun: 12:00pm-5:00pm', 'https://media2.fdncms.com/clevescene/imager/u/blog/31581833/dsc_0036_2_.jpg?cb=1571847683'

);

COMMIT;
           

