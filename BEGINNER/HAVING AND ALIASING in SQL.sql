
# LIMIT & ALIASING 

# Limit shortens the number of rows that would be shown 

SELECT *
FROM employee_demographics
LIMIT 3
;

# Can be combined with ORDER BY to become powerful 

SELECT *
FROM employee_demographics
ORDER BY age DESC 
LIMIT 2 , 1  # 2 for position 2 and 1 for 1 after position 2 
;



# ALIASING 

SELECT gender AS gends , AVG(age) AS avg_age  # AS changes the name of the column 
FROM employee_demographics 
GROUP BY gends
HAVING avg_age  > 40
;