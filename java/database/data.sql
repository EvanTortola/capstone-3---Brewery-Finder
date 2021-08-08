BEGIN TRANSACTION;



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

INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
VALUES ('Thirsty Dog', '1085 Old River Road', 'Cleveland', 'Ohio', '44113', '216-523-1501', 'At our Flats East Bank location we brew exclusive beers you can�t find anywhere else in addition to your Thirsty dog favorites on 42 tap handles.', 'Mon-Tue: Closed, Wed-Thur: 3:00pm-12:00am, Fri: 3:00pm-2:30am, Sat: 11:00am-2:30am, Sun: 11:00am-10:00pm', 'https://thirstydog.com/wp-content/uploads/P1360930.jpg'
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv)
VALUES ('1', 'LemonGrass Wheat', 'Wheat', 'Light and crushable American Wheat beer brewed with a touch of lemongrass to accentuate the fruity aromatics from the yeast.', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Funtappd.com%2Fb%2Fthe-bottlehouse-brewing-company-lemon-grass-wheat%2F4355105%2Fphotos&psig=AOvVaw3oKl3KVtzcEMiONJ1XF6EB&ust=1628444112433000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDdy6q5n_ICFQAAAAAdAAAAABAD', '4.2'
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv)
VALUES ('1', 'Syklist', 'Pale Ale', 'Orange hued and easy drinking Pale Ale, loaded with Mosaic and Galaxy hops, caramal rye in the mash adds a unique spice note to the finish.', 'https://untappd.com/b/the-bottlehouse-brewing-company-syklist/1577697/photos', '.05'
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv)
VALUES ('2', 'Blood Brood', 'Hefeweizen', 'Just in time for spring, this German Hefeweizan hatches from the bitter Ohio cold with familiar aromas of banana and spice. Brewed with sweet orange peel and blood orange puree, this juicy brew has a smooth mouthfeel and a light, tart finish.', 'https://www.google.com/url?sa=i&url=http%3A%2F%2Fwww.siblingrevelrybrewing.com%2Fsrb%2FSibling-Revelry-Brewing-Blog%2FFebruary-2018%2FSRB-Taps-Blood-Brood&psig=AOvVaw0WLFFptWU3AUTY54oe3t3I&ust=1628445687286000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIDsoZO_n_ICFQAAAAAdAAAAABAV', '5.0'
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv)
VALUES ('2', 'Augusta Peach Wheat', 'IPA', 'This refreshing wheat beer brewed with natural Georgia peach flavors is  as surprising and complex as Amen Corner.', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Funtappd.com%2Fb%2Fsibling-revelry-brewing-sibling-revelry-brewing-augusta-peach-wheat-ale%2F4217822%2Fphotos&psig=AOvVaw32hf7GIUs2sVIWBEBCVRwm&ust=1628445896792000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKDN7PC_n_ICFQAAAAAdAAAAABAD', '6.5'
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv)
VALUES ('3', 'Blood Hound Orange', 'IPA', 'Infused with blood oranges and hopped with Azacca & Centennial hops for a refreshing, fruit flavored sensation.', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fthirstydog.com%2Fportfolio-item%2Fblood-orange%2F&psig=AOvVaw0voJGG8wKYqc6e8UDYCTZo&ust=1628446076915000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPiuqsfAn_ICFQAAAAAdAAAAABAD', '5.35'
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv)
VALUES ('3', 'Citra Dog', 'IPA', 'You�ll find evidence of tangerine, grapefruit, orange and mango in the flavor and aroma from the multiple addition of a single hop variety, Citra.', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fthirstydog.com%2Fportfolio-item%2Fcitra-dog%2F&psig=AOvVaw3bQ61RR_RKs8Yovi_5OWwR&ust=1628446254439000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMC7opnBn_ICFQAAAAAdAAAAABAD', '6.8'
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv)
VALUES (3,'Coolship Saison', 'sour', 'A German inspired open fermented Pilsner brewed with Ohio malt from West Branch malts, Saasz and Hallertau hops', 'https://thirstydog.com/wp-content/uploads/sours-e1564413111772-773x1030.jpeg', 4.7);



INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



COMMIT;

ROLLBACK;
           

