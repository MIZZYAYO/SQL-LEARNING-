  
  # JOINS 
  
   SELECT * 
   FROM employee_demographics;
   
   SELECT *
   FROM employee_salary; 
   
   # INNER JOIN 
      SELECT * 
   FROM employee_demographics AS dem 
   INNER JOIN employee_salary  AS sal # joins it to salary
     ON  dem.employee_id = sal.employee_id  # combines the ids of the two and pulls out the common ones  
   ;
   
   
   # Selecting Columns with INNER JOIN 
   
      SELECT dem.employee_id , age ,occupation 
   FROM employee_demographics AS dem 
   INNER JOIN employee_salary  AS sal # joins it to salary
     ON  dem.employee_id = sal.employee_id  # combines the ids of the two and pulls out the common ones  
   ;
   
   
   # OUTER JOINS 
     
     # RIGHT - Compares the left to the right ....if the left does not have something the right has it returns 'null'
               # takes everything from the right and compares to the left 
     SELECT dem.employee_id , age
   FROM employee_demographics AS dem 
   RIGHT JOIN employee_salary  AS sal  
     ON  dem.employee_id = sal.employee_id 
   ;
   
   
      # LEFT - Same but vice versa 
   
   
   # SELF JOIN   - comparing a table to itself 
   
   SELECT emp1.employee_id AS emp_santa , # changing the names of all the output columns from here...
   emp1.first_name AS first_name_santa,
   emp1.last_name AS last_name_santa,
   emp2.employee_id AS emp_santa , 
   emp2.first_name AS first_name_santa,
   emp2.last_name AS last_name_santa   # ...till here
   FROM employee_salary AS emp1 # The emp differentiate the two same tables we are comparing 
   JOIN employee_salary AS emp2
   ON emp1.employee_id +1 = emp2.employee_id
   ;
   
   
   
   
   # JOINING MULTIPLE TABLES
   
           SELECT * 
   FROM employee_demographics AS dem      # Initial table
   INNER JOIN employee_salary  AS sal        # joining sal to dem
     ON  dem.employee_id = sal.employee_id    # what we used to join them 
     INNER JOIN parks_departments AS pd      # Adding parks to the join of sal and them 
     ON sal.dept_id = pd.department_id       # We are joining the dept_id in salary table to the dept_id of the parks_departments 
   ;
   