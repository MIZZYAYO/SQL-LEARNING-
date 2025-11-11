-- CTES

WITH CTE_Example AS  # naming it here 
(
SELECT gender , AVG(salary) AS avg_sal, MAX(salary) max_sal , MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics AS dem 
 JOIN employee_salary AS sal 
    ON dem.employee_id = sal.employee_id
    GROUP BY gender 
    )
    
    SELECT AVG(avg_sal)
    FROM CTE_Example  # brought back here 
    
    ;
    
  -- Subquery version of the exampe above to show that CTEs are more readable 

SELECT AVG(avg_sal)
FROM (
SELECT gender , AVG(salary) AS avg_sal, MAX(salary) max_sal , MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics AS dem 
 JOIN employee_salary AS sal 
    ON dem.employee_id = sal.employee_id
    GROUP BY gender 
    ) AS example_subquery  # naming it here 

    
    ;
    
    
    -- Additional Functions in CTEs
    
    WITH CTE_Example AS  # naming it here 
(
SELECT employee_id , gender , birth_date
FROM employee_demographics AS dem 
WHERE birth_date > '1985-01-01'
    ),
    
    CTTE_Example2 AS 
    (
    SELECT employee_id , salary 
    FROM employee_salary
    WHERE salary > 50000
    )
    SELECT *
    FROM CTE_Example  # brought back here 
    JOIN CTTE_Example2
      ON CTE_Example.employee_id = CTTE_Example2.employee_id
    
    ;
    
    