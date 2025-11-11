
 -- Stored Procedures 

 SELECT *
 FROM employee_salary
 WHERE salary >=50000;
 


CREATE PROCEDURE large_salaries()
 SELECT *
 FROM employee_salary
 WHERE salary >=50000;
 
 
CALL large_salaries();

DELIMITER $$  # Change the delimiter to allow them to flow together 
CREATE PROCEDURE large_salaries4()    # Creates a procedure 
BEGIN          # puts the 2 queries in one bracket 
 SELECT *
 FROM employee_salary
 WHERE salary >=50000;
 SELECT *
 FROM employee_salary
 WHERE salary >=10000;
END $$
   DELIMITER ;  # Changed the delimiter back to ; instead of $$
   
   
 CALL large_salaries4();
 
 # After creating a procedure in stored procedures you can create a new on by right clicking the "stored procedure" then creating a new one 



# PARAMETERS  ( Specifying what you want to stored ...pin pointing salary by its id using employee_id column)

DELIMITER $$  
CREATE PROCEDURE large_salaries5(thefirst_id INT)   # INT stands for integer and thefirst_id is the connection to the employee_id column in the table   
BEGIN          
 SELECT salary
 FROM employee_salary
 WHERE employee_id = thefirst_id ;  # They were compared here or equated 
END $$
   DELIMITER ;


CALL large_salaries5(1)   # 1 is the id in the column selected
 
 
 
 