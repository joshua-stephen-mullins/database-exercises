use codeup_test_db;

-- Write SELECT statements to output each of the following with a caption:
--
--     After each SELECT add an UPDATE statement to:
--
--     Add SELECT statements after each UPDATE so you can see the results of your handiwork.

--     All albums in your table.
select * from albums;
--     Make all the albums 10 times more popular (sales * 10)
update albums
set sales = sales * 10;

select * from albums;


--     All albums released before 1980
select * from albums where release_date < '1980';
--     Move all the albums before 1980 back to the 1800s.
update albums
set release_date = release_date - 100
where release_date < '1980';

select * from albums where release_date < '1980';



--     All albums by Michael Jackson
select * from albums where artist = 'Michael Jackson';
--     Change 'Michael Jackson' to 'Peter Jackson'
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';

select * from albums where artist = 'Peter Jackson';
