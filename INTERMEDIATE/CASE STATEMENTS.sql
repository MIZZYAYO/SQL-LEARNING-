 -- CASE STATEMENTS 
 
 SELECT first_name , 
 last_name,
 age,
 CASE  #beginning of case
      WHEN age <= 30 THEN "Young" # when age is 30 and below return 'young '
      WHEN age BETWEEN 31 and 50 THEN 'old'
      WHEN age >= 50 THEN 'Very old'
      END AS statement #end of case 
 FROM employee_demographics;
 
 
 
 # example
    -- earning < 50000 = 5%  , > 50000 = 7% 
    -- Finance dept = 10% bonus 
    
 
SELECT first_name , last_name , salary,
CASE 
     WHEN salary < 50000 THEN salary + (salary * 0.05)
     WHEN salary > 50000 THEN salary + (salary * 0.07)
	END AS New_Salary,
    
    CASE 
       WHEN dept_id = 6 THEN salary * 0.10
	END AS Bonus
FROM employee_salary;

SELECT *
 FROM parks_departments;  # Finance is dept_id of 6 
