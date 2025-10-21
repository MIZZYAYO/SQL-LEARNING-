 
 # UNIONS 
 
 #Combines 2 or more rows togther from the same or seperate tables
 
 
 SELECT first_name , last_name
 FROM employee_demographics
 UNION DISTINCT #by default it is on distinct 
  SELECT first_name , last_name
 FROM employee_salary;
 
 
  SELECT first_name , last_name
 FROM employee_demographics
 UNION ALL # shows the content of the two without removing duplicates 
  SELECT first_name , last_name
 FROM employee_salary;
 
 
 # USE Case
 
 
   SELECT first_name , last_name , 'old Man' AS label  #returns old Man if age > 40 for male under label column 
 FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION 
  SELECT first_name , last_name , 'old Lady' AS label 
 FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION 
SELECT first_name , last_name , 'Highly paid employees' AS label 
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name , last_name   
;
 