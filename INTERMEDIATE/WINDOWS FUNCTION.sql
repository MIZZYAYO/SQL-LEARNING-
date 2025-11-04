   -- WINDOWS FUNCTION
   
   # comparing it to GROUP BY  with WINDOWS 
   
   SELECT gender , AVG(salary) AS avg_salary 
   FROM employee_demographics AS dem
   JOIN employee_salary AS sal
     ON dem.employee_id = sal.employee_id
     GROUP BY gender # Groups the female and male into 1 female and 1 male row 
     ;
     
     # So basically GROUP BY roles everything into 1 column in this case avg_salary
     
        SELECT dem.first_name, 
        dem.last_name,
        gender , 
        salary,
        SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_total
        # ORDER BY in this case is used to form a rolling total taking it one id to the next 
        # PARTITION BY - seperates the multiple different rows and puts the similar ones together
   FROM employee_demographics AS dem
   JOIN employee_salary AS sal
     ON dem.employee_id = sal.employee_id

     ;
     
     
     
     
	# SPECIAL THINGS IN WINDOWS FUNCTION 
    
    # ROW NUMBER
    
            SELECT dem.employee_id ,
            dem.first_name, 
        dem.last_name,
        gender , 
        salary,
        ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS Row_Num,
       # the ORDER BY is RANKING from highest to lowest 
     RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS Rank_ , # Rank repeats if the values are the same while row number doesn't
     # Rank also numbers according to position when repition occurs e.g 5,5 then 7
   
   DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS Dense_ranking
     # dense_rank does not numbers according to position when repition occurs e.g 5,5 then 6
     
     FROM employee_demographics AS dem
   JOIN employee_salary AS sal
     ON dem.employee_id = sal.employee_id;
     
     
 
     
     
     
     