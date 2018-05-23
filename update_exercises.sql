USE codeup_test_db;


SELECT name AS 'Albums' FROM albums;
UPDATE albums SET sales=(sales*10);
SELECT name AS 'Albums' FROM albums;
SELECT name AS 'Albums released before 1980' FROM albums WHERE release_date >1980;
UPDATE albums SET sales=(sales*10) WHERE release_date >1980;
SELECT name AS 'Albums released before 1980' FROM albums WHERE release_date >1980;
SELECT name AS 'Albums by Michael Jackson' FROM albums WHERE artist='Michael Jackson';
UPDATE albums SET sales=(sales*10) WHERE artist='Michael Jackson';
SELECT name AS 'Albums by Michael Jackson' FROM albums WHERE artist='Michael Jackson';
