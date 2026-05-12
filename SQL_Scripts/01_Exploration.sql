-- 1. Create Database
CREATE DATABASE db_churn;
USE db_churn;

-- 2. Exploratory Data Analysis (EDA)
-- Checking Gender Distribution
SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 100.0 / (Select Count(*) from [db_churn].[dbo].[stg_churn]) as Percentage
FROM [db_churn].[dbo].[stg_churn]
GROUP BY Gender;

-- Checking Contract Type Distribution
SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 100.0 / (Select Count(*) from [stg_churn]) as Percentage
FROM [stg_churn]
GROUP BY Contract;

-- Checking Customer Status Distribution (Target Variable)
SELECT Customer_Status, Count(Customer_Status) as TotalCount,
Count(Customer_Status) * 100.0 / (Select Count(*) from [stg_churn]) as Percentage
FROM [stg_churn]
GROUP BY Customer_Status;

-- Checking Geographic Distribution
SELECT State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from [stg_churn]) as Percentage
FROM [stg_churn]
GROUP BY State
ORDER BY Percentage DESC;
