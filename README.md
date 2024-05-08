# Database Name
Shop Here

## Description
This database was created to demonstrate a simple e-commerce database

## Table of Contents
- [Schema](#schema)
- [Setup](#setup)
- [Usage](#usage)
- [License](#license)

## Schema
The entities for the Shop Here database management system are: 
 Employee 
 ItemDetails 
 OrderDetails 
 SupplierDetails 
 ProductCategory 
The attributes of the entities listed above are as follows: 
 Employees: Employee ID, First Name, Last Name, City, Phone 
 ItemDetails:  Item  ID,  Item  Name,  Item  Description, Unit Price, Quantity In Hand,  
Reorder Level, Reorder Quantity, Category ID, Supplier ID 
 OrderDetails: Purchase Order ID, Employee ID, Order Date, Receiving  Date, Item ID, Quantity Ordered, Quantity Received, Unit Price, Ship Method, Order Status 
 SupplierDetails: Supplier ID, First Name, Last Name, Address, Phone, Country 
 ProductCategory: Category ID, Category Name, Category Description 

## Setup
1. Install MySQL on your system.
3. Import the provided SQL dump file.

## Usage
- Connect to the database using MySQL Workbench or command-line tool].
- Execute SQL queries to retrieve, insert, update, or delete data as needed.

## License
This document is protected under Creative Commons
