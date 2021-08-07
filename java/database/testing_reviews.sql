SELECT review_id, beer_id, beer_name, user_experience, beer_rating, date_time FROM review WHERE beer_id = 2;

SELECT review_id, beer_id, beer_name, user_experience, beer_rating, date_time FROM review;


INSERT INTO review (beer_id, beer_name, user_experience, beer_rating, date_time)
VALUES (2,'Coolship Saison', 'It''s a sour, what else can I say', 4, '8-11-2020 3:30pm');

INSERT INTO beer (brewery_id, name, type, description, img_url, abv)
VALUES (2,'Coolship Saison', 'sour', 'A German inspired open fermented Pilsner brewed with Ohio malt from West Branch malts, Saasz and Hallertau hops', 'https://thirstydog.com/wp-content/uploads/sours-e1564413111772-773x1030.jpeg', 4.7);