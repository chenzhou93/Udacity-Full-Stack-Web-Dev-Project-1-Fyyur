-- insert venue records
INSERT INTO "Venue" (city, state, id, name, num_upcoming_shows)
VALUES 
('San Francisco', 'CA', 1, 'The Musical Hop', 0),
('San Francisco', 'CA', 3, 'Park Square Live Music & Coffee', 1),
('New York', 'NY', 2, 'The Dueling Pianos Bar', 0);

-- update venue records
UPDATE "Venue"
SET 
address = '1015 Folsom Street', 
phone = '123-123-1234', 
website = 'https://www.themusicalhop.com',
facebook_link = 'https://www.facebook.com/TheMusicalHop',
seeking_talent = true,
seeking_description = 'We are on the lookout for a local artist to play every two weeks. Please call us.',
image_link = 'https://images.unsplash.com/photo-1543900694-133f37abaaa5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'
WHERE id=1;

UPDATE "Venue"
SET 
address = '335 Delancey Street', 
phone = '914-003-1132', 
website = 'https://www.theduelingpianos.com',
facebook_link = 'https://www.facebook.com/theduelingpianos',
seeking_talent = false,
image_link = 'https://images.unsplash.com/photo-1497032205916-ac775f0649ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
WHERE id=2;

UPDATE "Venue"
SET 
address = '34 Whiskey Moore Ave', 
phone = '415-000-1234', 
website = 'https://www.parksquarelivemusicandcoffee.com',
facebook_link = 'https://www.facebook.com/ParkSquareLiveMusicAndCoffee',
seeking_talent = false,
image_link = 'https://images.unsplash.com/photo-1485686531765-ba63b07845a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=747&q=80'
WHERE id=3;

-- insert artist records
INSERT INTO "Artist" (id, name, city, state, phone, website, facebook_link, seeking_venue, seeking_description, image_link)
VALUES 
(4, 'Guns N Petals', 'San Francisco', 'CA', '326-123-5000', 'https://www.gunsnpetalsband.com', 'https://www.facebook.com/GunsNPetals', true, 'Looking for shows to perform at in the San Francisco Bay Area!', 'https://images.unsplash.com/photo-1549213783-8284d0336c4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=300&q=80'),
(5, 'Matt Quevedo', 'New York', 'NY', '300-400-5000', null, 'https://www.facebook.com/mattquevedo923251523', false, null, 'https://images.unsplash.com/photo-1495223153807-b916f75de8c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
(6, 'The Wild Sax Band', 'San Francisco', 'CA', '432-325-5432', null, null, false, null, 'https://images.unsplash.com/photo-1558369981-f9ca78462e61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=794&q=80');