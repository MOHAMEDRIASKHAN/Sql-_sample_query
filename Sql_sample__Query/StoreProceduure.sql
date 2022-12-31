--A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

--So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.


CREATE PROCEDURE Sale_Detail
As
BEGIN
SELECT first_name
FROM sales.staffs
END
EXEC Sale_Detail
   --store procedure with single parameter
CREATE PROCEDURE Sale_Detaill @last_name varchar(50)
As
BEGIN
SELECT first_name
FROM sales.staffs
where last_name =@last_name
END 
Exec Sale_Detaill @last_name =Jackson
--Store Procedure with multiple parameter
CREATE PROCEDURE Sale_Detailll @first_name varchar(50), @last_name varchar(50)
As
BEGIN
SELECT first_name
From sales.staffs
where first_name=@first_name And last_name =@last_name 
END 
Exec Sale_Detailll @first_name ='Kali', @last_name ='Jackson'