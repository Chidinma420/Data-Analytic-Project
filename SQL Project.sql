-- Access our dataset
SELECT * FROM worldhappiness.worldhappinessdata2020;

-- Current date and time 
SELECT CURRENT_TIMESTAMP();

-- Finding out the happiest country
SELECT MAX(Ladderscore) AS 'Happiest country' 
FROM worldhappiness.worldhappinessdata2020;

-- Ten top countries with the highest happiness score
SELECT localname, ladderscore 
FROM worldhappiness.worldhappinessdata2020
ORDER BY 2 DESC
LIMIT 10;

-- Ten countries with the lowest happiness score
SELECT countryname, Manchesterscore 
FROM worldhappiness.worldhappinessdata2020
ORDER BY 2 ASC
LIMIT 10;

-- Slicing out columns from data table
SELECT Countryname, Regionalindicator 
FROM worldhappiness.worldhappinessdata2020;

-- Finding the sum of Happiness score
SELECT SUM(Ladderscore) AS 'Total Happiness score' 
FROM worldhappiness.worldhappinessdata2020;

-- Count number of countries in each region 
SELECT Regionalindicator, COUNT(countryname) 
FROM worldhappiness.worldhappinessdata2020
GROUP BY Regionalindicator;

-- Finding out 10 countries with the lowest GDP per capita
SELECT countryname, GDPpercapita 
FROM worldhappiness.worldhappinessdata2020
ORDER BY 2 ASC
LIMIT 10;

-- Computing Average of Happiness score by Region
SELECT Regionalindicator,AVG(ladderscore) AS 'Average Happiness score'
FROM worldhappiness.worldhappinessdata2020
GROUP BY Regionalindicator;

-- Finding out countries with GDP per capital greater than 10
SELECT countryname AS 'High-value countries', GDPpercapita
FROM worldhappiness.worldhappinessdata2020
WHERE GDPpercapita > 10;

SELECT * FROM worldhappiness.worldhappinessdata2020;

-- Countries grouped by their level of happiness
SELECT countryname, ladderscore, 
CASE 
WHEN ladderscore > 7 THEN 'Happiest people'
WHEN ladderscore >= 4 THEN 'Content'
ELSE 'Requires improvement' 
END AS 'Happiness level'
FROM worldhappiness.worldhappinessdata2020;

SELECT * FROM worldhappiness.happinessdata2019;

-- Joining the 2019 and 2020 Happiness table
SELECT * FROM worldhappiness.worldhappinessdata2020 table1
INNER JOIN worldhappiness.happinessdata2019 table2
ON table1.countryname = table2.country;

-- Comparing Germany 2020 score with 2019 score
SELECT table1.countryname, table1.ladderscore AS "2020 happiness score",
table2.score AS "2019 happiness score" FROM worldhappiness.worldhappinessdata2020 table1
INNER JOIN worldhappiness.happinessdata2019 table2
ON table1.countryname = table2.country
WHERE table1.countryname = "Germany";




















