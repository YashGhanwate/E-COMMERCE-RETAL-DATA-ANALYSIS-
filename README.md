# E-COMMERCE-RETAIL-DATA-ANALYSIS


Introduction:
Welcome to the E-Commerce Retail Data Analysis repository! This repository contains scripts and notebooks for analyzing e-commerce retail data to extract valuable insights and patterns. The analysis aims to support decision-making and strategy development for e-commerce businesses by providing a deeper understanding of customer behavior, product performance, and sales trends.


![1698041068974](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/f9750330-371c-4238-9623-0bba331b303c)



### Data Sources:
The dataset used for analysis consists of three main tables:

Customers: Contains information about customers, preferences, and other relevant details.

Prod_cat_info: Provides details about product categories, such as category names, descriptions, and attributes.

Transactions: Stores information about sales transactions, including customer IDs, product IDs, purchase amounts, and timestamps.



### DATA PREPARATION AND UNDERSTANDING:

 What is the total number of rows in each of the 3 tables in the database?

![Screenshot 2024-04-04 143444](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/59dfb2f6-f48e-4377-9190-051a0bfc4fee)

Result:

![Screenshot 2024-04-04 142944](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/2250a0d8-b6e5-42a6-8c78-0d71c1865861)
![Screenshot 2024-04-04 143005](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/2853b735-f05f-49cd-a874-e2261468e978)
![Screenshot 2024-04-04 143019](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/98b87725-61f9-4c47-ace1-beac8454c0d1)


What is the total number of transactions that have a return?

![Screenshot 2024-04-04 143647](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/b5aae84e-5a9c-4067-bc7b-57989aeddfbd)

Result

![Screenshot 2024-04-04 143736](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/cacad36a-553e-4094-b44f-17ec5b7c1f2d)


Which product category does the sub-category "DIY" belong to?

![Screenshot 2024-04-04 151752](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/a92faf1c-da55-4def-be9b-9c5c84a50bdb)

Result

![Screenshot 2024-04-04 151802](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/8fb102e7-f4ed-4934-be73-0f108472c89c)


### Business Problems and Solutions:

### Bussiness Objective: Which channel is most frequently used for Transactions?

Bussiness solution:

![Screenshot 2024-04-04 154729](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/42b1c504-6838-40e8-be2b-cf0adfa8f099)

Result

![Screenshot 2024-04-04 154737](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/6087b2ea-bfa6-41a4-be88-f8cc6adae450)

By executing this query, i'll get a list of store types along with the count of transactions for each store type, sorted in descending order based on transaction count. The store type that appears at the top of the result set will be the one that is most frequently used for transactions.


### Bussiness Objective: What is the count of Male and Female customers in the database?

Bussiness solution:

![Screenshot 2024-04-04 155419](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/eae8fbea-f80d-4a72-9220-feef80bd75b7)


Result

![Screenshot 2024-04-04 155440](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/19bd007c-6ce9-472e-9efa-4468d9f1dbf0)

By executing this query, i'll get a result set with two rows, one for each distinct gender in the database. Each row will contain the gender value (male or female) and the count of customers with that gender. This provides an overview of the distribution of male and female customers in the database.


### Bussiness Objective:From which city do we have the maximum number of customers and how many?

Bussiness solution:

![Screenshot 2024-04-04 155901](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/c9479075-80bb-4ed5-8cb0-b938a3a1a296)


Result

![Screenshot 2024-04-04 155915](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/44b27f38-7deb-4fef-8a86-e6d4d0b74b5e)

By executing this query, i'll get a result set where the first row represents the city with the maximum number of customers, and its count will be listed alongside it. This provides an overview of the city with the highest customer count in the database.


### Bussiness Objective: How many sub_categories are there under the books category?

Bussiness solution:


![Screenshot 2024-04-04 160133](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/84627182-3574-4b31-8db3-bc0803dada28)


Result

![Screenshot 2024-04-04 160140](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/e642a6dc-b196-4450-9046-918b9547affc)

The result of this query will contain one row, where the prod_cat column will be "Books", and the No_of_Subcategories column will indicate the count of sub-categories within the "Books" category. This will provide an overview of how many sub-categories exist under the "Books" category in the database.


### Bussiness Objective: What is the maximum quantity of products ever ordered?

Bussiness solution:

![Screenshot 2024-04-04 160555](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/28644bd8-04ed-4d8c-a58a-874c45cd4b4e)


Result

![Screenshot 2024-04-04 160605](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/2f977170-e1c2-4b7d-97a6-787f01f56a27)


In summary, the query retrieves the maximum quantity of products ever ordered from the Transactions table and presents it as a single result.


### Bussiness Objective: What is the net total revenue generated in categories Electronics and Books?

Bussiness solution:

![Screenshot 2024-04-04 160930](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/4d50fa9d-2bd0-46bc-a24f-d8650a80a1e9)

Result

![Screenshot 2024-04-04 160937](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/f682fb89-19a8-4ed0-80e0-6455ba296fcb)

In summary, the query provides an overview of the net total revenue generated in the "Electronics" and "Books" categories from the Transactions table, after joining with the Prod_cat_info table and performing aggregation and filtering.


### Bussiness Objective: How many customers have >10 transactions with us excluding returns?

Bussiness solution:

![Screenshot 2024-04-04 161251](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/791b33fb-97c3-4c54-973b-f87d2ff61fd7)

Result

![Screenshot 2024-04-04 161301](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/c64420e3-de6a-43d7-8807-971a908f2fdc)

In summary, the query provides an overview of the number of customers who have made more than 10 transactions with your business, excluding returns.


Bussiness Objective: What is the combined revenue earned from the "Electronics "and "Clothing"categories from "Flagship store"?

Bussiness solution:

![Screenshot 2024-04-04 161513](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/1f7306c2-7df1-4505-9297-39765ee909c9)

Result

![Screenshot 2024-04-04 161522](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/b4bfce35-c88f-4f67-ba78-53a05675991b)

In summary, the query provides an overview of the total revenue generated from "Male" customers in the "Electronics" category, broken down by product sub-category.


### Bussiness Objective: What is percentage of sale and returns by product sub category;display only top 5 sub categories in terms of sales?

Bussiness solution:

![Screenshot 2024-04-04 162131](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/edb9a34c-9e42-4b89-8e8b-d9ea2b6fc578)
![Screenshot 2024-04-04 162150](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/6a531609-620f-4576-8c2d-68f4165c59b6)


Result

![Screenshot 2024-04-04 162204](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/066a6f24-9fd5-42f6-8ba1-2c8b2683c690)
![Screenshot 2024-04-04 162220](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/55269135-6902-4f9f-84a9-6b7a5242c0d2)


In summary, the query provides an overview of the percentage of sales and returns by product sub-category, displaying only the top 5 sub-categories in terms of sales.



### Bussiness Objective: For all customers age between 25 to 35 years find what is the net total revenue generated by these customers in the last 30 days of transactions from max transaction date available in the data?

Bussiness solution:

![Screenshot 2024-04-04 164822](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/a6a3f208-8b39-4ff7-b1c7-4bcf3324c1c8)

Result

![Screenshot 2024-04-04 164908](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/cd74b59a-9066-41b4-afde-254dabf66101)


In summary, the query retrieves the maximum transaction date, then calculates the total revenue generated by customers aged between 25 to 35 years in the last 30 days from that maximum transaction date.


### Bussiness Objective: Which store_type sells the maximum products; by value of sales amount and by quantity sold?

Bussiness solution:

![Screenshot 2024-04-04 165230](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/442963c1-6129-4efa-9dbd-66edf8d8dbb7)

Result

![Screenshot 2024-04-04 165237](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/8cab2947-2585-40a8-bac7-3459ceec92ac)

In summary, the query provides an overview of the store type that sells the maximum products both by the value of sales amount and by the quantity sold.




### Bussiness Objective: What are the categories for which average revenue is above the overall average?

Bussiness solution:

![Screenshot 2024-04-04 165450](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/45096f6c-65b3-409f-bae4-a0421c5a3e8d)

Result

![Screenshot 2024-04-04 165457](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/2efa8ace-8296-4327-8582-22ff5f514c3c)

In summary, the query provides an overview of the product categories for which the average revenue is above the overall average revenue across all categories.


### Bussiness Objective(15): Find the average and total revenue by each subcategory for the categories which are among top 5 categories in terms of quantity sold?

Bussiness solution:

![Screenshot 2024-04-04 165701](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/b77bfe8e-7ee1-436e-b6a0-d89976c59f24)

Result

![Screenshot 2024-04-04 165727](https://github.com/YashGhanwate/E-COMMERCE-RETAL-DATA-ANALYSIS-/assets/164736496/1cafb668-e52a-4a69-9379-77c8df4e0dab)

In summary, the query provides an overview of the average and total revenue for each subcategory within the top 5 categories in terms of quantity sold.
