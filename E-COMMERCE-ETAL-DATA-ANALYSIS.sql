

#-----------------------------------------------------------E-COMMERCE-RETAL-DATA-ANALYSIS------------------------------------------------------------------------#


#-----------------------------------------------------------DATA PREPARATION AND UNDERSTANDING--------------------------------------------------------#

USE P1;


#1)What is the total number of rows in each of the 3 tables in the database?
SELECT COUNT(*) AS CUST_ROWS FROM P1.CUSTOMERS;
SELECT COUNT(*) AS PROD_ROWS FROM P1.PROD_CAT_INFO; 
SELECT COUNT(*) AS TRANS_ROWS FROM P1.Transactions;





#2)What is the total number of transactions that have a return?
SELECT COUNT(*) AS Return_Transactions
  FROM transactions
  WHERE total_amt < 0;
  




  
#3) W hat is the time range of the transaction data available for analysis? Show the output in number of days, months and years simultaneously in different columns.
select distinct year(tran_date) from P1.Transactions;

select distinct datename(month,tran_date) from P1.Transactions;

select tran_date, day(tran_date) as Days, month(tran_date) as Month, year(tran_date) as Years 
from P1.Transactions;


select tran_date from P1.Transactions
order by tran_date desc;



select  datediff(year,'2011-01-02','2014-12-02') as Years,
datediff(month,'2011-01-02','2014-12-02') as Months,
datediff(day,'2011-01-02','2014-12-02') as Days from P1.Transactions;



SELECT DATEDIFF(year, '2011-01-02','2014-12-02')as Years,
DATEDIFF(month, '2011-01-02','2014-12-02')as Months,
DATEDIFF(day, '2011-01-02','2014-12-02')as Days; 
  
select * from P1.Transactions;
select distinct year(tran_date) from P1.Transactions;

select distinct datename(month,tran_date) from P1.Transactions;

select tran_date, day(tran_date) as Days, month(tran_date) as Month, year(tran_date) as Years 
from P1.Transactions;


select tran_date from P1.Transactions
order by tran_date desc;


select  datediff(year,'2011-01-02','2014-12-02') as Years,
datediff(month,'2011-01-02','2014-12-02') as Months,
datediff(day,'2011-01-02','2014-12-02') as Days from P1.Transactions;


SELECT DATEDIFF(year, '2011-01-02','2014-12-02')as Years,
DATEDIFF(month, '2011-01-02','2014-12-02')as Months,
DATEDIFF(day, '2011-01-02','2014-12-02')as Days; 






#5)Which product category does the sub-category "DIY" belong to?
select prod_subcat, prod_cat from P1.prod_cat_info
where prod_subcat ='DIY';









#----------------------------------------------------------------DATA ANALYSIS---------------------------------------------------------------------

#1)Which channel is most frequently used for transactions?
select Store_type, count(store_type) as Count_of_stores from P1.Transactions
group by store_type 
order by Count_of_stores desc; 





#2)What is the count of Male and Female customers in the database?
 SELECT Gender, COUNT(*) AS Count_of_Gender
  FROM Customers
  WHERE Gender IS NOT NULL
  GROUP BY Gender; 
  




  
  #3)From which city do we have the maximum number of customers and how many?
SELECT  city_code, COUNT(customer_id) AS No_of_Customers
  FROM Customers
  GROUP BY city_code
  ORDER BY no_of_customers DESC; 






  
  #4)How many sub-categories are there under the Books category?
SELECT prod_cat, COUNT(prod_subcat) AS No_of_Subcategories
  FROM Prod_cat_info
  WHERE prod_cat = 'Books'
  GROUP BY prod_cat; 
  





  
  #5)What is the maximum quantity of products ever ordered?
SELECT MAX(qty) AS Max_Quantity_Ordered
  FROM Transactions; 
  




  
  #6)What is the net total revenue generated in categories Electronics and Books?
 SELECT prod_cat, SUM(total_amt) AS Net_Total_Revenue
  FROM Transactions trans
  INNER JOIN Prod_cat_info prod
  ON trans.prod_cat_code = prod.prod_cat_code AND trans.prod_subcat_code = prod.prod_sub_cat_code
  GROUP BY prod.prod_cat
  HAVING prod_cat IN ('Electronics', 'Books');







#7)How many customers have >10 transactions with us, excluding returns?
SELECT cust_id, COUNT(transaction_id) AS No_of_transactions
  FROM Transactions
  WHERE total_amt > 0
  GROUP BY cust_id
  HAVING COUNT(transaction_id) > 10; 
  




  
  #8)What is the combined revenue earned from the "Electronics" & "Clothing " categories, from "Flagship stores"
  SELECT trans.Store_type, SUM(trans.total_amt) AS Combined_Revenue
  FROM Transactions trans
  INNER JOIN Prod_cat_info prod
  ON trans.prod_cat_code = prod.prod_cat_code AND trans.prod_subcat_code = prod.prod_sub_cat_code
  WHERE trans.total_amt > 0
  AND prod_cat IN ('Electronics', 'Clothing' )
  GROUP BY trans.Store_type
  HAVING trans.Store_type = 'Flagship store'; 
  




  
  #9)What is the total revenue generated from "Male" customers in "Electronics "category? Output should display total revenue by prod sub-cat.
SELECT prod.prod_cat, prod.prod_subcat, SUM(trans.total_amt) AS Total_Revenue
  FROM Transactions trans
  INNER JOIN Prod_cat_info prod
  ON trans.prod_cat_code = prod.prod_cat_code AND trans.prod_subcat_code = prod.prod_sub_cat_code
  INNER JOIN Customers cust
  ON trans.cust_id = cust.customer_Id
  WHERE trans.total_amt > 0 and cust.Gender = 'M'
  GROUP BY prod.prod_cat, prod.prod_subcat
  HAVING prod.prod_cat = 'Electronics' ;   
  




  
  
  #10) What is percentage of sales and returns by product sub category; display only top 5 sub categories in terms of sales?
SELECT  prod.prod_subcat, SUM(trans.total_amt) AS Sales_Amount
  FROM Transactions trans
  INNER JOIN Prod_cat_info prod
  ON trans.prod_cat_code = prod.prod_cat_code AND trans.prod_subcat_code = prod.prod_sub_cat_code
  WHERE trans.total_amt > 0
  GROUP BY prod.prod_subcat
  ORDER BY Sales_Amount;
  #  --Percentage sales and returns
  WITH Sales_Returns AS
  (
  SELECT  prod.prod_subcat,
  SUM(CASE WHEN trans.Qty > 0 THEN trans.Qty ELSE 0 END) AS Sales_value,
  ABS(SUM(CASE WHEN trans.Qty < 0 THEN trans.Qty ELSE 0 END)) AS Returns_value
  FROM Transactions trans
  INNER JOIN Prod_cat_info prod
  ON trans.prod_cat_code = prod.prod_cat_code AND trans.prod_subcat_code = prod.prod_sub_cat_code
  GROUP BY prod.prod_subcat
  ORDER BY Sales_value DESC
  )

  SELECT prod_subcat, ROUND(((Returns_value / (Returns_value + Sales_value))*100), 2) AS Returns_Percentage,
  ROUND(((Sales_value / (Returns_value + Sales_value))*100), 2) AS Sales_Percentage
  FROM Sales_Returns;






  
  #11)For all customers aged between 25 to 35 years find what is the net total revenue generated by these consumers in last 30 days of transactions from max transaction date available in the data?
  SELECT  (tran_date) FROM Transactions
			       GROUP BY tran_date
			       ORDER BY tran_date DESC;

			       WITH ABC
			       AS(SELECT  (tran_date), SUM(total_amt) AS Total_amount FROM Customer c
			       INNER JOIN Transactions t
			       ON t.cust_id = c.customer_id
			       WHERE DATEDIFF(YEAR,DOB,GETDATE()) BETWEEN 25 AND 35
			       GROUP BY tran_date
			       ORDER BY tran_date DESC)
			       SELECT SUM(Total_amount) AS Final_revenue FROM ABC;









#12).Which product category has seen the max value of returns in the last 3 months of transactions?
select prod_cat,count(Qty) as No_of_returns
from P1.Transactions as T
inner join P1.prod_cat_info as P
on T.prod_cat_code = P.prod_cat_code
where total_amt < 0 and datediff(month,'2014-09-01',tran_date)= 3
group by prod_cat; 

#-- product category having maximum value of returns in last three months

with ABC 
as(select prod_cat,transaction_id,total_amt
from P1.Transactions as T
inner join P1.prod_cat_info as P
on T.prod_cat_code = P.prod_cat_code 
where total_amt <0 and datediff(month,'2014-09-01',tran_date)= 3)
select abs(sum(total_amt)) as Return_amount_cat from ABC;


#--product subcategories having maximum number of returns in last three months

select prod_cat,count(Qty) as No_of_ids_return
from P1.Transactions as T
inner join P1.prod_cat_info as P
on T.prod_subcat_code = P.prod_sub_cat_code
where total_amt < 0 and datediff(month,'2014-09-01',tran_date)= 3
group by prod_cat;

#-- product subcategories having maximum value of returns in last three months

with ABC 
as(select prod_cat,Qty,total_amt
from P1.Transactions as T
inner join P1.prod_cat_info as P
on T.prod_subcat_code = P.prod_sub_cat_code 
where total_amt <0 and datediff(month,'2014-09-01',tran_date)= 3)
select abs(sum(total_amt)) as Return_value_subcat from ABC;








#13).Which store-type sells the maximum products; by value of sales amount and by quantity sold?
  SELECT Store_type, SUM(total_amt) AS Sales_Amount, COUNT(Qty) AS Number_of_Products
  FROM Transactions
  WHERE total_amt > 0 
  GROUP BY Store_type
  ORDER BY Sales_Amount DESC, Number_of_Products DESC; 
  




  
  #14)What are the categories for which average revenue is above the overall average,
 SELECT prod.prod_cat, AVG(trans.total_amt) AS Categorial_Average_Revenue
  FROM Transactions trans
  INNER JOIN Prod_cat_info prod
  ON trans.prod_cat_code = prod.prod_cat_code AND trans.prod_subcat_code = prod.prod_sub_cat_code
  WHERE trans.total_amt > 0 
  GROUP BY prod.prod_cat
  HAVING  AVG(trans.total_amt)  > (SELECT AVG(total_amt) AS Overall_Average_Revenue FROM Transactions WHERE total_amt > 0);








#15)Find the average and total revenue by each subcategory for the categories which are among top 5 categories in terms of quantity sold
SELECT (prod_cat), COUNT(Qty) AS Quantity_Sold FROM Transactions t
                   INNER JOIN prod_cat_info p
                   ON t.prod_cat_code = t.prod_cat_code
                   WHERE total_amt > 0
                   GROUP BY prod_cat
                   ORDER BY Quantity_Sold DESC;
                   SELECT prod_cat, prod_subcat, ROUND(SUM(total_amt), 3) AS Total_amount, ROUND(AVG(total_amt), 3) AS Avg_amount FROM Transactions t
                   INNER JOIN prod_cat_info p
                   ON t.prod_cat_code = p.prod_cat_code
                   WHERE total_amt > 0 AND prod_cat IN ('Books', 'Electronics', 'Home and kitchen', 'Footwear', 'Clothing')
                   GROUP BY prod_cat, prod_subcat
                   ORDER BY CASE WHEN prod_cat = 'Books' THEN 1
                                 WHEN prod_cat = 'Electronics' THEN 2
			                     WHEN prod_cat = 'Home and kitchen' THEN 3
			                     WHEN prod_cat = 'Footwear' THEN 4
			                     ELSE 5
			                     END;