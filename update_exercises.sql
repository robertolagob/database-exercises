USE codeup_test_db;


SELECT name AS 'a.All albums in your table' FROM albums;
SELECT name AS 'b.All albums released before 1980' FROM albums WHERE release_date >1980;
SELECT name AS 'c.All albums by Michael Jackson' FROM albums WHERE artist='Michael Jackson';
UPDATE albums SET sales=(sales*10);
SELECT name AS 'a.All albums in your table' FROM albums;
UPDATE albums SET release_date=1800 WHERE release_date<1980;
SELECT name AS 'b.All albums released before 1980' FROM albums WHERE release_date >1980;
UPDATE albums SET artist='Peter Jackson' WHERE artist= 'Michael Jackson';
SELECT name AS 'c.All albums by Michael Jackson' FROM albums WHERE artist='Michael Jackson';
