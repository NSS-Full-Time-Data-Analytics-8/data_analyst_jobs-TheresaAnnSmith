--Question 1
SELECT COUNT (*)
FROM data_analyst_jobs;
--Answer: There are 1793 rows

--Question 2
SELECT *
FROM data_analyst_jobs
LIMIT 10;
--Answer: ExxonMobil

--Question 3
SELECT location 
FROM data_analyst_jobs
WHERE location ='KY' OR location = 'TN';
--Answer: 21 postings in TN, 6 postings in KY (27 total)

--Question 4
SELECT company,title,location,star_rating
FROM data_analyst_jobs
WHERE location ='TN'
AND star_rating>4;
--Answer: 3 postings in TN have a star rating above 4

--Question 5
SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--Answer: 151 postings have between 500 and 1000 reveiw counts.

--Question 6
SELECT ROUND(AVG(star_rating),2) AS avg_rating, location AS state
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC;
--Answer: Nebraska

--Question 7
SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs;
--Answer: 881

--Question 8
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location='CA';
--Answer: 230

--Question 8
SELECT DISTINCT title, location
FROM data_analyst_jobs
WHERE location='CA';

--Question 9
SELECT DISTINCT company, ROUND(AVG(star_rating),2) AS avg_rating
FROM data_analyst_jobs
WHERE review_count >5000 AND company IS NOT null
GROUP BY company;

SELECT COUNT(DISTINCT company)
FROM data_analyst_jobs
WHERE review_count > 5000;
--Answer:40

--Question 10
SELECT DISTINCT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count >5000
GROUP BY company
ORDER BY avg_rating DESC;
--Answer: American Express, General Motors, Kaiser Permanente, Microsoft, Nike, Unilever

--Question 11
SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%analyst%';
--Answer: 774 different job titles containing the word analyst

--Question 12
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title NOT ILIKE '%analytics%' AND title NOT ILIKE '%analyst%';
--Answer 4

--BONUS
SELECT domain, COUNT(title) AS total_jobs
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%' AND days_since_posting > 21 AND domain IS NOT NULL
GROUP by domain
ORDER by total_jobs DESC;
