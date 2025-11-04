  
  -- SUBQUERIES
  
  
    # SUBQUERIES WITH WHERE STATEMENT 
  
  SELECT *
   FROM employee_demographics
     WHERE employee_id IN (       # A subquerie that is trying to pic out something in salary table that is needed in demo table 
         SELECT employee_id  # YOU CAN ONLY HAVE 1 COLUMN HERE!!
         FROM employee_salary
         WHERE dept_id = 1   # selects all the ids with 1 in employee demographics and salary just like join 
     )
   ;
    # we are selecting the employee_id in demographics that have the dept_id of 1 in employee_salary
    
    
    SELECT *
   FROM employee_demographics;
   
        SELECT *
   FROM employee_salary;
 
 
 # SUBQUERIES WITH SELECT STATEMENT 
 
SELECT first_name , salary , 
(SELECT 
    AVG(salary)     # showing the average of all salaries from employee_salary
FROM
    employee_salary) AS average  # becomes a column on it's own with the average
   FROM employee_salary
   
   ;
   
   
    # SUBQUERIES WITH FROM STATEMENT 
    
    SELECT  AVG(count_age) # Average of all maximum ages in both male and female 
    FROM 
    ( SELECT gender , 
    AVG(age) AS avg_age ,  # average age 
    MAX(age) AS max_age , # maximum age 
    MIN(age) AS min_age , # minimum age 
    COUNT(age) AS count_age  # number of people 
    FROM employee_demographics 
    GROUP BY gender
       ) AS agg_table 
	
    ;
 
  