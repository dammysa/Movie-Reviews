CREATE TABLE movie_reviews (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name TEXT,
  release_date TEXT,
  genre TEXT,
  review TEXT
)

INSERT into movie_reviews (name, release_date, genre, review) VALUES 
('Inception', '2010-07-16', 'Science Fiction', 'A mind-bending thriller that keeps you guessing until the final scene. Brilliantly executed.'),
('The Grand Budapest Hotel', '2014-03-28', 'Comedy', 'Visually stunning and wonderfully quirky. Wes Anderson at his best.'),
('Parasite', '2019-05-30', 'Thriller', 'A masterclass in storytelling. Twists and tension that stay with you.'),
('Mad Max: Fury Road', '2015-05-15', 'Action', 'Explosive, relentless, and visually incredible. A high-octane masterpiece.'),
('The Social Network', '2010-10-01', 'Drama', 'Smart, fast-paced, and compelling. A surprisingly intense origin story.'),
('Spirited Away', '2001-07-20', 'Animation', 'Magical and unforgettable. A Studio Ghibli classic with rich imagination.'),
('Get Out', '2017-02-24', 'Horror', 'Smart and chilling with a powerful social commentary. A modern horror landmark.'),
('La La Land', '2016-12-09', 'Musical', 'Charming, nostalgic, and bittersweet. A love letter to dreamers.'),
('The Matrix', '1999-03-31', 'Science Fiction', 'Groundbreaking and iconic. Still as cool and relevant as ever.'),
('The Godfather', '1972-03-24', 'Crime', 'Timeless and impeccably crafted. A true classic of American cinema.'),
('Blade Runner 2049', '2017-10-06', 'Science Fiction', 'Visually breathtaking and deeply philosophical. A worthy successor.'),
('Jojo Rabbit', '2019-10-18', 'Comedy', 'Funny, touching, and surprisingly emotional. A bold mix of satire and heart.'),
('Prisoners', '2013-09-20', 'Thriller', 'Dark, gripping, and emotionally intense. Keeps you on edge.'),
('John Wick', '2014-10-24', 'Action', 'Stylish, brutal, and endlessly cool. Redefined the action genre.'),
('The Pursuit of Happyness', '2006-12-15', 'Drama', 'Inspiring and emotional. Will Smith delivers a powerful performance.'),
('Coco', '2017-10-27', 'Animation', 'Vibrant and heartfelt. A touching celebration of family and tradition.'),
('Hereditary', '2018-06-08', 'Horror', 'Disturbing and unforgettable. A slow-burning psychological horror.'),
('The Greatest Showman', '2017-12-20', 'Musical', 'Energetic and crowd-pleasing. Filled with memorable songs and spectacle.'),
('Goodfellas', '1990-09-19', 'Crime', 'Fast-paced and compelling. Scorsese delivers a gangster epic.'),
('Interstellar', '2014-11-07', 'Science Fiction', 'Epic, emotional, and ambitious. A stunning sci-fi journey.');