
-- Triggers and Events 

 # Trigger - is a block of code that executes automatically when the event takes place on a specific table 
 
 SELECT *
 FROM employee_demographics;
 
 SELECT * 
 FROM employee_salary;
 
 DELIMITER $$
  CREATE TRIGGER employee_insert  # Creating a trigger called employee_insert
       AFTER INSERT ON employee_salary      # Meaning after a change in employee_salary ...it would show in employee_demographics
       FOR EACH ROW                      # trigger would affect each row 
       BEGIN 
	      INSERT INTO employee_demographics (employee_id , first_name , last_name)       # Meaning after a change in employee_salary ...it would insert in employee_demographics and the columns were specified
          VALUES (NEW.employee_id , NEW.first_name , NEW.last_name)  ;        # Tkes from only new rows that were created or inserted 
       END $$
       
       DELIMITER ;
       
       INSERT INTO employee_salary ( employee_id , first_name , last_name , occupation , salary , dept_id) # New entries in the employee_salary table
       VALUES (13, 'Mizzy', 'Daniel' , 'CEO', 1000000, NULL);
       
       
       
       
       -- EVENTS 
       
       # An EVENT takes place when it is scheduled 
       
       SELECT *
       FROM employee_demographics;
       
       
       DELIMITER $$
       CREATE EVENT delete_retirees  # creating the event
       ON SCHEDULE EVERY 30 SECOND        # Scheduling for every 30 seconds 
       DO                                    
       BEGIN
         DELETE
           FROM employee_demographics
           WHERE age >= 60;    # Delete every person that is 60 and above 
       
       END $$
       
       DELIMITER ;
       
       SHOW VARIABLES LIKE 'event%';    # Turns on EVENT scheduler 
       