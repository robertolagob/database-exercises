USE world;

# What languages are spoken in Santa Monica?
SELECT Language,Percentage FROM countrylanguage
JOIN country  ON countrylanguage.CountryCode = country.Code
JOIN city ON country.Code = city.CountryCode
WHERE city.Name='Santa Monica' ORDER BY Percentage ASC ;

# How many different countries are in each region?
SELECT Region,count(Name) AS num_countries FROM country
GROUP BY Region ORDER BY num_countries ASC ;


# What is the population for each region?

SELECT Region, SUM(Population)
FROM country
GROUP BY Region ORDER BY SUM(Population) DESC ;
