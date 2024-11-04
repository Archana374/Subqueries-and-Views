##Find the number of persons in each country:
SELECT Country_name, COUNT(*) AS Number_of_Persons
FROM Persons
GROUP BY Country_name;

##Find the number of persons in each country sorted from high to low:
SELECT Country_name, COUNT(*) AS Number_of_Persons
FROM Persons
GROUP BY Country_name
ORDER BY Number_of_Persons DESC;

##Find the average rating for Persons in respective countries if the average is greater than 3.0:
SELECT Country_name, AVG(Rating) AS Average_Rating
FROM Persons
GROUP BY Country_name
HAVING AVG(Rating) > 3.0;


##Find the countries with the same rating as the USA (using subqueries):
SELECT DISTINCT Country_name
FROM Persons
WHERE Rating = (SELECT AVG(Rating) FROM Persons WHERE Country_name = 'United States');

##Select all countries whose population is greater than the average population of all nations:
SELECT Country_name
FROM Country
WHERE Population > (SELECT AVG(Population) FROM Country);

##Create the Product Database and Customer Table
CREATE DATABASE Product;

USE Product;

CREATE TABLE Customer1 (
    Customer_Id INT PRIMARY KEY,
    First_name VARCHAR(100),
    Last_name VARCHAR(100),
    Email VARCHAR(100),
    Phone_no VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Zip_code VARCHAR(10),
    Country VARCHAR(100)
    );
    
    ##Create a view named customer_info for the Customer table that displays Customer’s full name and email address:
    CREATE VIEW customer_info AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_Name, Email
FROM Customer1;

SELECT * FROM customer_info;

##Create a view named US_Customers that displays customers located in the US:
CREATE VIEW US_Customers AS
SELECT *
FROM Customer
WHERE Country = 'United States';

##Create another view named Customer_details with specified columns:
CREATE VIEW Customer_details AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_Name, Email, Phone_no, State
FROM Customer1;

##Update phone numbers of customers who live in California for Customer_details view:
SET SQL_SAFE_UPDATES = 0;
UPDATE Customer
SET Phone_no = '123-456-7890'  -- Example new phone number
WHERE State = 'California';

##Count the number of customers in each state and show only states with more than 5 customers:
SELECT State, COUNT(*) AS Customer_Count
FROM Customer
GROUP BY State
HAVING COUNT(*) > 5;

##Return the number of customers in each state based on the "state" column in the customer_details view:
SELECT State, COUNT(*) AS Customer_Count
FROM Customer_details
GROUP BY State;

##Return all columns from the customer_details view, sorted by the "state" column in ascending order:
SELECT *
FROM Customer_details
ORDER BY State ASC;
