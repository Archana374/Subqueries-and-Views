Project Title: Country and Customer Database
Overview
This project involves the creation and management of two primary tables: Country and Persons, along with a Customer table within a new database called Product. The goal is to manage demographic and customer information effectively, allowing for various data queries and operations.

Database Structure
1. Country Table
Table Name: Country
Fields:
Id (INT, PRIMARY KEY): Unique identifier for each country.
Country_name (VARCHAR(100)): Name of the country.
Population (INT): Total population of the country.
Area (INT): Total area of the country in square kilometers.
2. Persons Table
Table Name: Persons
Fields:
Id (INT, PRIMARY KEY): Unique identifier for each person.
Fname (VARCHAR(100)): First name of the person.
Lname (VARCHAR(100)): Last name of the person.
Population (INT): Population associated with the person (for context).
Rating (DECIMAL(3, 2)): Rating of the person (e.g., on a scale of 1 to 5).
Country_Id (INT): Foreign key linking to the Country table.
Country_name (VARCHAR(100)): Name of the country.
3. Customer Table
Database Name: Product
Table Name: Customer
Fields:
Customer_Id (INT, PRIMARY KEY): Unique identifier for each customer.
First_name (VARCHAR(100)): Customer's first name.
Last_name (VARCHAR(100)): Customer's last name.
Email (VARCHAR(100)): Customer's email address.
Phone_no (VARCHAR(15)): Customer's phone number.
Address (VARCHAR(255)): Customer's address.
City (VARCHAR(100)): City of residence.
State (VARCHAR(100)): State of residence.
Zip_code (VARCHAR(10)): Zip code of the address.
Country (VARCHAR(100)): Country of residence.
Views Created
customer_info: Displays full name and email address of customers.
US_Customers: Displays customers located in the United States.
Customer_details: Provides a detailed view of customer information.
SQL Operations
This project includes various SQL operations, such as:

Counting persons by country.
Calculating average ratings for persons.
Updating customer phone numbers based on location.
Filtering customers based on specific criteria.

Create the Tables: Execute the SQL commands provided in the project to create the Country, Persons, and Customer tables.

Insert Data: Populate the tables with sample data as per the examples provided.

Create Views: Create the necessary views for better data management.

Queries
Refer to the SQL query examples included in the project for various operations like selecting, updating, and counting data.

Conclusion
This database project provides a structured way to manage and analyze country and customer data effectively. It allows for extensive querying capabilities and can be expanded further based on requirements.
