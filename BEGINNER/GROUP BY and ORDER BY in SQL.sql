
# GROUP BY 
SELECT gender , AVG(age) , MAX(age) , MIN(age)  # Average age with gender ....MAX is maximum value
FROM employee_demographics
GROUP BY gender 
;

SELECT salary , occupation
FROM employee_salary
GROUP BY salary , occupation 
;


# ORDER BY  (Ascending)
SELECT *
FROM employee_demographics
ORDER BY first_name ASC  # Arranges the whole table based on the first_name in ascending order
;

# ORDER BY  (Descending)
SELECT *
FROM employee_demographics
ORDER BY first_name DESC  # Arranges the whole table based on the first_name in descending order
;

# ORDER BY  (multiple columns)
SELECT *
FROM employee_demographics
ORDER BY gender , age DESC  # Arranges the whole table based on the first_name and gender in descending order
							# The first is gender then age meaning it would first order it by gender before age 
 
 
;


# ORDER BY  (using position of columns)
SELECT *
FROM employee_demographics
ORDER BY 5 , 4 DESC  # gender is the 5th column while age is the 4th column   (not recommended)
 
 
;

