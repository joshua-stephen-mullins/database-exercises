USE codeup_test_db;

--     The name of all albums by Pink Floyd.
select artist as 'Info' from albums where artist = 'Pink Floyd';

-- The year Sgt. Peppers Lonely Hearts Club Band was released
select release_date from albums where name = "Sgt. Pepper's Lonely Hearts Club Band";

-- The genre for Bad
select genre from albums where name = 'Bad';

-- Which albums were released in the 1990s
select * from albums where release_date > '1989' AND release_date < '2000';

-- Which albums had less than 20 million certified sales
select * from albums where sales < '20';




select release_date from albums where artist = 'Pink Floyd';