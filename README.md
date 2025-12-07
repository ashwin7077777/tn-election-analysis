# 🗳️ Tamil Nadu Election Analysis (Basic SQL Project)

This project is a beginner-level SQL analysis of the 2021 Tamil Nadu state election results. Using MySQL, I explored the dataset to understand how candidates performed, which parties had strong presence, and what patterns can be observed based on gender, age, and vote margins.

---

## 📁 Files Included

- `tamil.sql` – MySQL file containing the table structure and data insert statements.
- `TN.sql` – MySQL file with multiple queries I wrote for analysis: SELECT, FILTER, AGGREGATE, CASE, JOIN, and more.

---

## 📌 What I Did

- Explored election data using SQL
- Used filtering to find specific candidate groups (by party, age, gender)
- Counted members by party using `GROUP BY`
- Ordered results by vote margin or candidate names
- Used `CASE` to classify vote margins
- Tried simple `JOIN` queries within the same table to compare opponents

---

## 🛠️ Tools Used

- **MySQL**: To run all SQL queries
- **VS Code**: For writing and testing SQL files
- **GitHub**: To store and share my project

---

## 🔍 Sample Queries

```sql
-- Top parties by number of candidates
SELECT party, COUNT(*) AS total
FROM tn_2021_elections_results
GROUP BY party
ORDER BY total DESC;

-- Female candidates under age 45
SELECT candidate, age, party
FROM tn_2021_elections_results
WHERE sex = 'F' AND age < 45;
````

---

## ✅ Skills Practiced

* Basic `SELECT` queries
* Using `WHERE`, `ORDER BY`, and `GROUP BY`
* Aggregating data with `COUNT`, `AVG`, `MAX`
* Creating categories using `CASE`
* Writing simple `JOIN` queries between rows in the same table

---

## 📈 Why This Project

I wanted to improve my SQL basics using a real dataset. Working with election data gave me a chance to explore interesting patterns and practice different types of SQL queries that are useful for any data analysis task.

---

## 🙋‍♂️ About Me

I'm learning SQL and this is one of my early projects. I made it beginner-friendly so others learning SQL can understand and try running the queries too.
