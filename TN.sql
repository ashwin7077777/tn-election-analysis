-- SELECT
SELECT * FROM tn_2021_elections_results;

SELECT candidate, party, constituency FROM tn_2021_elections_results;

SELECT DISTINCT party FROM tn_2021_elections_results;

SELECT candidate, age + 5 AS age_in_5_years FROM tn_2021_elections_results;


-- FILTER
SELECT candidate, age FROM tn_2021_elections_results WHERE age > 60;

SELECT candidate, party FROM tn_2021_elections_results WHERE party = 'DMK';

SELECT candidate, sex FROM tn_2021_elections_results WHERE sex = 'F';

SELECT candidate, margin FROM tn_2021_elections_results WHERE margin < 1000;


-- SORT
SELECT candidate, votes FROM tn_2021_elections_results ORDER BY votes DESC;

SELECT candidate, age FROM tn_2021_elections_results ORDER BY age ASC;

SELECT party, candidate FROM tn_2021_elections_results ORDER BY party, candidate;

SELECT candidate, margin FROM tn_2021_elections_results ORDER BY margin DESC;


-- AGGREGATE
SELECT party, COUNT(*) AS total_members FROM tn_2021_elections_results GROUP BY party;

SELECT sex, COUNT(*) AS count_by_gender FROM tn_2021_elections_results GROUP BY sex;

SELECT constituency, AVG(age) AS avg_age FROM tn_2021_elections_results GROUP BY constituency;

SELECT party, MAX(margin) AS max_margin FROM tn_2021_elections_results GROUP BY party;


-- HAVING
SELECT party, COUNT(*) AS total FROM tn_2021_elections_results GROUP BY party HAVING COUNT(*) > 5;

SELECT constituency, COUNT(*) AS total_candidates FROM tn_2021_elections_results GROUP BY constituency HAVING COUNT(*) >= 3;

SELECT sex, COUNT(*) AS count FROM tn_2021_elections_results GROUP BY sex HAVING COUNT(*) > 100;

SELECT party, AVG(margin) AS avg_margin FROM tn_2021_elections_results GROUP BY party HAVING AVG(margin) > 2000;


-- CASE
SELECT candidate, age,
  CASE 
    WHEN age < 40 THEN 'Young'
    WHEN age BETWEEN 40 AND 60 THEN 'Mid-age'
    ELSE 'Senior'
  END AS age_group
FROM tn_2021_elections_results;

SELECT candidate, margin,
  CASE 
    WHEN margin > 10000 THEN 'Landslide'
    WHEN margin > 1000 THEN 'Clear Win'
    ELSE 'Close Call'
  END AS win_type
FROM tn_2021_elections_results;

SELECT party,
  CASE 
    WHEN party IN ('DMK', 'ADMK') THEN 'Major'
    ELSE 'Other'
  END AS party_type
FROM tn_2021_elections_results;

SELECT candidate, 
  CASE 
    WHEN Deposit_lost = 'Yes' THEN 'Lost Deposit'
    ELSE 'Secured Deposit'
  END AS deposit_status
FROM tn_2021_elections_results;


-- JOIN
SELECT a.constituency, a.candidate, b.candidate AS opponent
FROM tn_2021_elections_results a
JOIN tn_2021_elections_results b
ON a.constituency = b.constituency AND a.candidate != b.candidate
WHERE a.party = 'DMK' AND b.party = 'ADMK';

SELECT a.candidate, a.party, b.party AS opponent_party
FROM tn_2021_elections_results a
JOIN tn_2021_elections_results b
ON a.constituency = b.constituency AND a.candidate != b.candidate
WHERE a.party = 'BJP';

SELECT a.candidate AS cand1, b.candidate AS cand2, a.constituency
FROM tn_2021_elections_results a
INNER JOIN tn_2021_elections_results b
ON a.constituency = b.constituency AND a.sex != b.sex;

SELECT t1.candidate, t1.party, t2.party AS rival_party
FROM tn_2021_elections_results t1
JOIN tn_2021_elections_results t2
ON t1.constituency = t2.constituency AND t1.candidate != t2.candidate
WHERE t1.party = 'DMK' AND t2.party = 'BJP';
