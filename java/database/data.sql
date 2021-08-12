BEGIN TRANSACTION;



INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
VALUES('BottleHouse Brewery', '13368 Madison Ave', 'Lakewood', 'Ohio', '44107', '216-926-0025','As we move through year 9 our passion for the art of beer, mead and cider making increases daily.  Through our 3 taprooms (Cleveland Heights, Lakewood, Shaker Heights), we have been able to share our passions and our products without distributing our beer to retail stores.  This model allows us to stay true to our belief that communities deserve a welcoming place to gather and share life over a well-made beer.
',
 'Mon: Closed, Tue-Thur: 5:00pm-12:00am, Fri: 5:00pm-2:00am, Sat: 2:00pm-2:am, Sun: 2:00pm-10:00pm', 'https://golakewood.com/wp-content/uploads/2019/03/bottlehouse-brewery-1280x640.jpg'
);

INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
VALUES ('Sibling Revelry Brewing', '29305 Clemens Rd', 'Westlake', 'Ohio', '44145', '440-471-8589', 'Our taproom is where family and friends meet to grab a brew, talk about Cleveland sports and relax after a long day at the office. Unwind at our bar and enjoy a view of our brewhouse, or relive your childhood and play a board game. Weather permitting, enjoy a cold brew on the outdoor patio, perfect for friends and pups alike. For the constantly-connected, we offer free Wi-Fi and USB wall plugs to charge all of your devices.',
'Mon: Closed, Tue-Fri: 4:00pm-9:00pm, Sat: 12:00pm-9:00pm, Sun: 12:00pm-5:00pm', 'https://media2.fdncms.com/clevescene/imager/u/blog/31581833/dsc_0036_2_.jpg?cb=1571847683'
);

INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
VALUES ('Thirsty Dog', '1085 Old River Road', 'Cleveland', 'Ohio', '44113', '216-523-1501', 'At our Flats East Bank location we brew exclusive beers you canï¿½t find anywhere else in addition to your Thirsty dog favorites on 42 tap handles.', 'Mon-Tue: Closed, Wed-Thur: 3:00pm-12:00am, Fri: 3:00pm-2:30am, Sat: 11:00am-2:30am, Sun: 11:00am-10:00pm', 'https://thirstydog.com/wp-content/uploads/P1360930.jpg'
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (1, 'LemonGrass Wheat', 'Wheat', 'Light and crushable American Wheat beer brewed with a touch of lemongrass to accentuate the fruity aromatics from the yeast.', 'https://untappd.akamaized.net/photos/2021_06_12/2bac464b5e7f908374834081ab3d913f_640x640.jpg', '4.2%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (1, 'Syklist', 'Pale Ale', 'Orange hued and easy drinking Pale Ale, loaded with Mosaic and Galaxy hops, caramal rye in the mash adds a unique spice note to the finish.', 'https://untappd.akamaized.net/photos/2020_09_18/12d8cc71de90e3c86b77a9ce9271592f_640x640.jpg', '5.0%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (1, 'Humboldt Fog', 'IPA', 'Humboldt Fog West Coast IPA: a dry, bitter hop bomb bursting with resinous pine and grapefruit.', 'https://untappd.akamaized.net/photos/2020_11_22/6b9c6c24feb287d127fb21b9068188e2_640x640.jpg', '6.0%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (1, 'Eventyr', 'Sour', 'Imperial Brett IPA aged in Chardonnay barrels with tropical fruit.', 'https://untappd.akamaized.net/photo/2017_07_09/118bb5af9018480a89b955c6ef14dba3_320x320.jpeg', '10.7%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (1, 'Alexanders', 'Mead', 'Chardonay barrel aged elderberry pyment.', 'https://untappd.akamaized.net/photo/2016_06_08/01d91fd80883c011049e77d030fa0900_320x320.jpeg', '12.0%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (1, 'Sunset Alchemy', 'Sour', 'A blend of two year old barrel aged sour ale, fresh wheat beer brewed with sea salt and coriander and conditioned with loads of fresh fruit. Twilight hued summer sipper with layers of flavor, nuance and refreshment.', 'https://untappd.akamaized.net/photos/2021_07_25/a24d0550e0f80109165c6f9876b51540_640x640.jpg', '6.0%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (1, 'My Precious', 'Sour Ale', 'This hazy orange ale is a blend of fresh wheat beer touched with coriander and sea salt, apricots and 2 year barrel aged sour ale. Slightly tart with nice stone fruit notes and a mild salinity.','https://untappd.akamaized.net/photos/2021_07_23/cf8680b6f6a65c9a91d47ba8dd7d63df_640x640.jpg', '4.2%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (2, 'Blood Brood', 'Hefeweizen', 'Just in time for spring, this German Hefeweizan hatches from the bitter Ohio cold with familiar aromas of banana and spice. Brewed with sweet orange peel and blood orange puree, this juicy brew has a smooth mouthfeel and a light, tart finish.', 'http://www.siblingrevelrybrewing.com/SiblingRevelryBrewing/media/SiblingRevelryMedia/2017%20Beer%20Images%201228x1590/2017%20Beer%20Images%20220x500/blood-can-combo-small.png?ext=.png', '5.0%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (2, 'Augusta Peach Wheat', 'IPA', 'This refreshing wheat beer brewed with natural Georgia peach flavors is  as surprising and complex as Amen Corner.', 'http://www.siblingrevelrybrewing.com/SiblingRevelryBrewing/media/SiblingRevelryMedia/2017%20Beer%20Images%201228x1590/2017%20Beer%20Images%20220x500/augutsa-peach-wheat-small.png?ext=.png', '6.5%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (2, 'India Pale Ale', 'IPA', 'Our India Pale Ale has big pine, citrus and stone fruit aromas with a clean, dry finish. Its Like Grandpa Bert - not that bitter once you get to know him.', 'http://cdn.shopify.com/s/files/1/0278/6495/7016/products/siblingipa_1200x1200.png?v=1616858680', '6.5%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (2, 'Third Wheel', 'Triple Ale', 'The king of the hill. You can run, but you cant hide from this golden Belgian Tripel brewed with a lot of malt, a little candy sugar and authentic Trappist yeast. Just like Uncle Mike chasing Uncle Todd, youll lose your breath to this bitter-but-sweet beer with a fresh, yeasty aroma and a full, malty body. Starting subtle and finishing strong, this high-alcohol treat is both dry and sweet making it the odd man out.', 'https://untappd.akamaized.net/photos/2021_07_29/b5288fd26ea99231407317d3a104ae2d_640x640.jpg', '9.2%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (2, 'Red', 'Red Ale', 'An American Red Ale brewed in the Irish tradition with UK malts providing a light, toasted caramel profile and finished with a healthy amount of American hops for a fresh, moderately citrus aroma. Keep this one handy for the rowdiest family reunions and sports parties.', 'http://www.siblingrevelrybrewing.com/SiblingRevelryBrewing/media/SiblingRevelryMedia/2017%20Beer%20Images%201228x1590/2017%20Beer%20Images%20220x500/red-small.png?ext=.png', '5.5%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (2, 'Olly Olly Gluten Free', 'Gluten Free Pale Ale', 'This pale copper-colored beer was brewed in collaboration with our friends at Barrio! Malted oats give this beer a sweet body and residual sweetness reminiscent of a traditional pale ale to match the citrusy blend of hops. Light bodied and barely bitter, this GF beer plays well with all palates.', 'http://www.siblingrevelrybrewing.com/SiblingRevelryBrewing/media/SiblingRevelryMedia/2017%20Beer%20Images%201228x1590/2017%20Beer%20Images%20220x500/olly-olly-small.png?ext=.png', '5.0%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (2, 'Spiked Seltzers', 'Seltzer', 'Since 2015, Sibling Revelry’s goal has been to brew the best, most accessible craft beverages as possible. Built on quality and consistency, Sibling Revelry craft Spiked Seltzer is brewed with all natural ingredients for a premium, small-batch flavor that you have to taste to believe. Drop the macro brews and reach for a true, refreshing and hand crafted hard seltzer with a delicious splash of fruit flavors.', 'http://www.siblingrevelrybrewing.com/SiblingRevelryBrewing/media/SiblingRevelryMedia/2017%20Beer%20Images%201228x1590/2017%20Beer%20Images%20220x500/Small-Beer-Image-for-Web_seltzer.png?ext=.png', '5.5%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (3, 'Blood Hound Orange', 'IPA', 'Infused with blood oranges and hopped with Azacca & Centennial hops for a refreshing, fruit flavored sensation.', 'https://thirstydog.com/wp-content/uploads/BLOODHOUND.jpg', '5.35%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (3, 'Citra Dog', 'IPA', 'Youï¿½ll find evidence of tangerine, grapefruit, orange and mango in the flavor and aroma from the multiple addition of a single hop variety, Citra.', 'https://thirstydog.com/wp-content/uploads/new-beer-page-image-CITRA2.jpg', '6.8%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (3, 'Coolship Saison', 'Sour', 'A German inspired open fermented Pilsner brewed with Ohio malt from West Branch malts, Saasz and Hallertau hops.','https://thirstydog.com/wp-content/uploads/sours-e1564413111772-773x1030.jpeg', '4.7%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (3, 'Siberian Night Russian', 'Imperial Stout', 'Very dark, rich, creamy and full-bodied with a complex character from generous amounts of roasted, toasted, and caramel malts.', 'https://thirstydog.com/wp-content/uploads/siberian.jpg', '8.92%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (3, 'Cerberus', 'Triple Ale', 'Cerberus, the three-headed dog guarding the gates of Hades, is made with one grain and 3 different yeasts. A deceptive golden color and malty palate lend to its complexity.', 'https://thirstydog.com/wp-content/uploads/cerberus.jpg', '9.9%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (3, 'Pineapple', 'IPA', 'An American Style IPA infused with Pineapple and hopped with Mosaic & Citra hops for a refreshing, fruit-flavored sensation.', 'https://thirstydog.com/wp-content/uploads/pineapple-ipa.jpg', '5.7%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (3, 'Old Leghumper', 'Porter Ale', 'This dark brown, robust porter is full bodied with a deep roasted, silky smooth, malty sweet taste.', 'https://thirstydog.com/wp-content/uploads/LegHumper.jpg', '5.95%', true
);

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



COMMIT;

ROLLBACK;
           

