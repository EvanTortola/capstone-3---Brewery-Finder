BEGIN TRANSACTION;

INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
VALUES ('BottleHouse Brewery', '13368 Madison Ave', 'Lakewood', 'Ohio', '44107', '216-926-0025','As we move through year 9 our passion for the art of beer, mead and cider making increases daily.  Through our 3 taprooms (Cleveland Heights, Lakewood, Shaker Heights), we have been able to share our passions and our products without distributing our beer to retail stores.  This model allows us to stay true to our belief that communities deserve a welcoming place to gather and share life over a well-made beer.', 'Mon: Closed, Tue-Thur: 5:00pm-12:00am, Fri: 5:00pm-2:00am, Sat: 2:00pm-2:am, Sun: 2:00pm-10:00pm', 'https://golakewood.com/wp-content/uploads/2019/03/bottlehouse-brewery-1280x640.jpg'
);

INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
VALUES ('Sibling Revelry Brewing', '29305 Clemens Rd', 'Westlake', 'Ohio', '44145', '440-471-8589', 'Our taproom is where family and friends meet to grab a brew, talk about Cleveland sports and relax after a long day at the office. Unwind at our bar and enjoy a view of our brewhouse, or relive your childhood and play a board game. Weather permitting, enjoy a cold brew on the outdoor patio, perfect for friends and pups alike. For the constantly-connected, we offer free Wi-Fi and USB wall plugs to charge all of your devices.', 'Mon: Closed, Tue-Fri: 4:00pm-9:00pm, Sat: 12:00pm-9:00pm, Sun: 12:00pm-5:00pm', 'https://media2.fdncms.com/clevescene/imager/u/blog/31581833/dsc_0036_2_.jpg?cb=1571847683'
);

INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
VALUES ('Thirsty Dog', '1085 Old River Road', 'Cleveland', 'Ohio', '44113', '216-523-1501', 'At our Flats East Bank location we brew exclusive beers you canï¿½t find anywhere else in addition to your Thirsty dog favorites on 42 tap handles.', 'Mon-Tue: Closed, Wed-Thur: 3:00pm-12:00am, Fri: 3:00pm-2:30am, Sat: 11:00am-2:30am, Sun: 11:00am-10:00pm', 'https://thirstydog.com/wp-content/uploads/P1360930.jpg'
);

INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
VALUES ('Terrestrial Brewing Company', '7524 Father Frascati drive', 'Cleveland', 'Ohio', '44102', '216-465-9999', 'Small-batch brewery boasting unique beers and amazing views of Lake Erie in the Battery Park neighborhood.', 'Monday-Thurs: 4:00pm-11:00pm, Fri: 4:00pm-12:00am, Sat: 10:00am-12:00am, Sun: 10:00am-10:00pm', 'https://cdn.hopculture.com/wp-content/uploads/2019/08/clevelandbreweries-LEAD-1.jpg'
);

INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
VALUES ('Masthead Brewing Co.', '1261 Superior Ave.', 'Cleveland', 'Ohio', '44114', '216-206-6176', 'Built in 1921 as an automotive dealership and is now listed on the National Register of Historic Places. The taproom features 300 seats, a 100’ long bar, and an additional 50 seat dog friendly patio with a view of downtown Cleveland. We’ve become known for our ever evolving lineup of juicy New England IPAs, Neapolitan-style pizza, and our barrel aged beer utilizing exclusively allocated whiskey barrels from top-rated distilleries.', 'Mon: Closed, Tues-Thur: 11:30am-10:00pm, Fri-Sat: 11:30am-11pm, Sun: 12:00pm-7:00pm', 'https://mastheadbrewingco.com/wp-content/uploads/2019/12/MJC6912-scaled.jpg'
);

--INSERT INTO brewery (brewery_name, street, city, state, zip_code, phone, history, hours_of_operation, image)
--VALUES ('Canton Brewing Company', '120 3rd St NW', 'Canton', 'Ohio', '44702', '330-409-0343', 'The Canton Brewing Companys Restaurant and Speakeasy tap room both feature great lineups of delicious food and beer, all prepared and brewed in house. Canton Brewing Company offers various styles of craft beers created by blending the age-old traditions with modern techniques.', 'Mon-Wed: Closed, Thurs: 4:00-9:00pm, Fri: 11:30am-10:00pm, Sat: 11:30am-10:00pm, Sun: Closed', 'https://media-cdn.tripadvisor.com/media/photo-s/0d/a4/65/b2/canton-brewing-company.jpg'
--);

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
VALUES (3, 'Citra Dog', 'IPA', 'You will find evidence of tangerine, grapefruit, orange and mango in the flavor and aroma from the multiple addition of a single hop variety, Citra.', 'https://thirstydog.com/wp-content/uploads/new-beer-page-image-CITRA2.jpg', '6.8%', true
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

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (4, 'Trill', 'Stout', 'An imperial stout malt bomb. Loads of sweet sticky roasted malt flavors hinting at chocolate, toffee, and coffee flavors. Straight forward no frills…only trill.', 'https://untappd.akamaized.net/photos/2021_08_06/9a89808e8634e87375526bed7ed31bd3_640x640.jpg', '10.5%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (4, 'Evenstar', 'IPA', 'A West Coast Style IPA brewed with Simcoe, Nugget, Centennial and Citra hops. Dry and resinous with a fruity and bitter finish.', 'https://untappd.akamaized.net/photos/2021_08_08/6d544441551524803b883faf01acff02_640x640.jpeg', '7.4%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (4, 'Left On Red', 'Sour', 'A tart and extremely refreshing sour ale with strawberry and rhubarb.', 'https://untappd.akamaized.net/photos/2021_07_14/b12e53437a597e16ad06696dc3c54d0c_640x640.jpg', '4.0%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (4, 'Canopy Crusher', 'IPA', 'A Hazy American IPA with juicy Mosaic and Chinook hops, and inspired by one of our favorite animals ... The Giraffe.', 'https://untappd.akamaized.net/photos/2021_08_08/547fbc6fa2367406086f5e9ca89f2f96_640x640.jpeg', '6.6%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (4, 'Runaway Jim', 'IPA', 'A Session IPA brewed with Amarillo, Equanot and Chinook hops. Inspired by the phinest band in the nation!', 'https://untappd.akamaized.net/photos/2021_06_24/9d22dc8cb8f7e8dc07985679d6ebffc5_640x640.jpeg', '4.8%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (4, 'Space Chimp Wit OG', 'Wheat', 'Our original gangster, Space Chimp Wit, brewed with bitter orange and coriander.', 'https://untappd.akamaized.net/photos/2021_08_02/154f6833b5a53a67d0f5b6b833f48e5e_640x640.jpg', '5.0%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (4, 'Double Canopy Crusher', 'IPA', 'Our favorite giraffe inspired IPA amped up with more malt, more hops and more fun!', 'https://untappd.akamaized.net/photos/2021_06_21/3d501f277477d2a4d49e53d00f15b12d_640x640.jpg', '9.0%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (5, 'Fruit Blood - Strawberry and Vanilla', 'IPA', 'This edition of Fruit Blood Double Smoothie IPA proudly features Tahitian Vanilla, Strawberry, and Lactose.', 'https://untappd.akamaized.net/photo/2020_08_30/e05afca8d506e318cde38083922a88ef_c_936546008_640x640.jpg', '8.5%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (5, 'Extra! Extra!', 'IPA', 'Hot off the press is Extra! Extra!, one of our favorite Double New England IPAs. This beer was double dry hopped with some of our favorite American hop varieties.', 'https://untappd.akamaized.net/photos/2021_06_14/dfe8af415d05dbb646056f929dd0372f_640x640.jpg', '8.0%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (5, 'Haunted Hayride Pumpkin Ale', 'Pumpkin Ale', 'Our house pumpkin ale is brewed with pumpkin, cinnamon, nutmeg and ginger.', 'https://3.bp.blogspot.com/-4xFHGmK9E3s/W7WFNKfXucI/AAAAAAAAIIg/Hu77f3q2oeQ9rTnDD-QoXliesBlDgU5FACLcBGAs/s1600/IMG_7190.jpg', '7.3%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (5, 'Superior Wit', 'Wheat', 'Our take on a classic Belgian style, this sessionable ale was brewed with lemon peel, orange peel and freshly cracker ocoriander', 'https://untappd.akamaized.net/photos/2021_08_02/36b1e6cbe6d0aa0dc27dfdcc56b5616d_640x640.jpg', '5.7%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (5, 'Baseball Bat', 'Stout', 'This imperial stout is full of real raspberries and peanut butter, but we left out the chunks of baseball bat for your safety.', 'https://untappd.akamaized.net/photos/2021_06_27/bc6fa642092d508c4e367fd88c82eb8f_640x640.jpg', '10.8%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (5, 'Flat Earth Double NEIPA', 'IPA', 'We threw brewing science to the curb with this beer and added an unbelievably stupid amount of hops at every step of the process.', 'https://untappd.akamaized.net/photos/2021_04_17/841f1c59ae483e2315ad1773b5e86866_640x640.jpg', '8.0%', true
);

INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
VALUES (5, 'Hollow Earth Triple NEIPA', 'IPA', 'We have thrown brewing science to the curb before, but this time we are taking it to the next level. This beer is loaded to the brim with creamy malts and juicy hops.', 'https://untappd.akamaized.net/photo/2020_06_12/9dbd2eb705e4cbc3b86aa80f4a0309e9_c_905454886_640x640.jpg', '9.2%', true
);

--INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
--VALUES (6, 'Tuscora Pilsner', 'German-Style Pilsner', 'Bright light gold, sweet grainy bread notes and hints of herbal hops, with crispy grainy sweetness and light corn notes. ', 'http://drinkcantonbeer.com/wp-content/uploads/2017/07/tuscora_stockimage.jpg', '5.3%', true
--);

--INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
--VALUES (6, 'Cascade', 'Pale Ale', 'Hazy golden with an off-white head, citrus, grapefruit and tangerine with slight notes of malt sweetness, and slight grapefruit, pine, citrus and bready caramel notes.', 'http://drinkcantonbeer.com/wp-content/uploads/2017/07/Cascade_stockimage.jpg', '5.8%', true
--);

--INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
--VALUES (6, 'Carpe Noctem', 'Coffee Porter', 'Deep brown, nearly black with a khaki head, big aromas of sweet bread and pretzels, with bready pretzel notes and faint notes of bakers chocolate.', 'http://drinkcantonbeer.com/wp-content/uploads/2017/07/carpe_stockimage-1.jpg', '6.8%', true
--);

--INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
--VALUES (6, 'Deja Vu', 'White Stout', 'White stout brewed with oats, wheat and lactose. Conditioned on mounds of coffee beans from our friends at Carpe Diem, real vanilla beans and chocolate.', 'https://untappd.akamaized.net/photos/2020_01_18/f9dd1725977cb8796ce7670799d8159c_640x640.jpg', '5.5%', true
--);

--INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
--VALUES (6, 'Audi 5000', 'IPA', 'This Imperial IPA is brewed with real mango, real Madagascar vanilla beans, lactose, oats and wheat. It pours a cloudy burnt orange/dark yellowish color and has flavors and aromas of candied orange, mango, citrus and creamsicle type flavors. It has a medium to heavy body with a nice creamy mouthfeel and smooth, rounded hop flavors with low bitterness.', 'https://untappd.akamaized.net/photos/2019_04_27/09146ce33818ae72bc2864833db508d1_640x640.jpg', '8.5%', true
--);

--INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
--VALUES (6, 'Alpha and Omega', 'Double IPA', 'This Double IPA is brewed with a blend of hops including Citra, Mosaic and an unnamed hop, giving off flavors and aromas of pineapple, mango, juicy citrus and melon. It pours a dark gold color and has a medium body with low bitterness. Brewed with oats and wheat to give it some body and a soft mouthfeel.', 'https://untappd.akamaized.net/photos/2019_05_03/817d1e51dc0e702e25bbd292e6be3389_640x640.jpg', '8.1%', true
--);

--INSERT INTO beer (brewery_id, name, type, description, img_url, abv, is_active)
--VALUES (6, 'SLURP!', 'Sour Ale', 'Kettle Sour brewed with oats and lactose while being infused with real tangerine puree and real Madagascar vanilla beans. Flavors and aromas of candied orange, fresh tangerine, vanilla and lemon tart.', 'https://untappd.akamaized.net/photos/2019_06_25/6791247a0f1ad02851a714a1371c0396_640x640.jpg', '3.5%', true
--);

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');



COMMIT;

ROLLBACK;
           

