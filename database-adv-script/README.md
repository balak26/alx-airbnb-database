# SQL Joins Practice

## 🎯 Objective

Master SQL joins by writing and understanding complex queries using:

- **INNER JOIN**
- **LEFT JOIN**
- **FULL OUTER JOIN**

## 🧠 What You’ll Learn

- How different SQL join types work
- How to fetch related data across multiple tables
- How to handle missing relationships using joins

## 📂 Tables Used

- `users`: Stores user information
- `bookings`: Stores user bookings
- `properties`: Stores property listings
- `reviews`: Stores property reviews

## 📝 Queries

### 🔗 INNER JOIN

Get all bookings and the users who made them.

### 🔗 LEFT JOIN

Get all properties and their reviews, including properties with no reviews.

### 🔗 FULL OUTER JOIN

Get all users and all bookings, even if there’s no direct link between them.

## ✅ Requirements

- A relational database (PostgreSQL recommended for FULL OUTER JOIN support)
- Basic knowledge of SQL syntax

## 📌 Notes

- Use `COALESCE` to handle `NULL` values in results
- `FULL OUTER JOIN` is not supported in some systems like MySQL (use `UNION` of `LEFT JOIN` and `RIGHT JOIN` as an alternative)

## Non-Correlated Subquery

- Filters properties whose ID appears in a list of property_ids from the reviews table.
- The subquery groups reviews by property and keeps only those with an average rating > 4.0.

## Correlated Subquery

- Checks for each user if they have more than 3 bookings.
- The subquery runs per user, using u.id from the outer query.

#### 🔹 Aggregation Query

- Uses `COUNT(*)` to calculate the **total number of bookings per user**.
- `GROUP BY user_id` groups the data so that the count applies to each user individually.

#### 🔹 Window Function Query

- Groups bookings by `property_id` to get the **total bookings per property**.
- `RANK() OVER (ORDER BY COUNT(*) DESC)` assigns a **rank** based on the booking count.
  - Properties with the same number of bookings get the same rank.
  - Use `ROW_NUMBER()` instead if you want to force a unique rank for each property.
