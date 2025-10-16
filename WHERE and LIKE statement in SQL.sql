  # WHERE CLAUSE 
  
# USING WHERE IN SQL 

# Comparison Operators (>,<,=,>=,<=)
SELECT * 
FROM employee_salary
WHERE salary >= 5000 
;


SELECT * 
FROM employee_demographics
WHERE birth_date > '1980-01-01'

;


# Logical Operators (AND , OR , NOT)

# AND
SELECT * 
FROM employee_demographics
WHERE birth_date > '1980-01-01'
AND gender = 'Male';

# OR
SELECT * 
FROM employee_demographics
WHERE birth_date > '1980-01-01'
OR gender = 'Male';

# NOT 
SELECT * 
FROM employee_demographics
WHERE birth_date > '1980-01-01'
OR NOT gender = 'Male';  # or not male;


# LIKE STATEMENT 
SELECT * 
FROM employee_demographics
WHERE first_name LIKE '_a%'  # % means anything after a..... _ means a character before a ......it can also be used for date_birth 