
# DIFFERENCE BETWEEN HAVING AND WHERE 
 
 # Using HAVING 
SELECT gender , AVG(age) 
FROM employee_demographics
GROUP BY gender 
HAVING AVG(age) > 40  # HAVING works side to side with GROUP BY ....performs everything then filters it to what is in it 

;


# Using HAVING & WHERE
SELECT occupation , AVG(salary)  # selected columns to display 
FROM employee_salary
WHERE occupation LIKE '%manager%'   # anything behind manager anything infront
GROUP BY occupation   
#HAVING AVG(salary) > 70000  # Filters it down 
;

