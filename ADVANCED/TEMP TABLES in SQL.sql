 
  -- Temporary Tables
  
  # The not popular way 
  
  CREATE TEMPORARY TABLE temp_table
  ( first_name Varchar(50),  # only 50 characters 
    last_name Varchar(50),
    favorite_movie varchar(100)
    
  );
  
  
  SELECT *
  FROM temp_table;
  
  INSERT INTO temp_table 
  VALUES('Daniel', 'Mizzy' , 'Interstellar'); # entries in the new temp table 
  
    SELECT *
  FROM temp_table;
  
  
  
  
  
  # The popular way ( creating temp tables from existing tables )
  
  
SELECT * 
FROM employee_salary;

  CREATE TEMPORARY TABLE salary_over_50k
  SELECT * 
  FROM employee_salary
  WHERE salary >= 50000;


SELECT * 
FROM salary_over_50k;

