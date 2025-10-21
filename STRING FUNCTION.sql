
# STRING FUNCTIONS 

# LENGTH 
 
 SELECT first_name , LENGTH (first_name) # the length of the names in first_name column
 FROM employee_demographics
 ORDER BY 2 # orders it using the position of the second column 2 which is the lenght column  
 ;
 
 # UPPER 
 
  SELECT first_name , UPPER(first_name)  # Turns it to upper case 
  FROM employee_demographics;
  
  # LOWER -- same as UPPER but lower case 
  
  # TRIM  
     -- removes white spaces (left and right TRIM)
     
     SELECT first_name , LTRIM('              MIZZY') # Gets rid of the left white spaces 
     FROM employee_demographics;
     
       -- same for RTRIM
       
       
  # LEFT 
  
    SELECT first_name , LEFT(first_name , 4) , RIGHT(first_name , 4)
    # Left shortens the characters to 4 letters starting from the left , same for right
    FROM employee_demographics;
    
    
      SELECT first_name, 
      SUBSTRING(first_name , 2,4),
      birth_date,
      SUBSTRING(birth_date , 6,2) AS birth_month  #Shows just the months 
      # starts at the 2nd character and makes them 4 characters altogether 
    # SUBSTRING is a better improved version of LEFT and RIGHT
    FROM employee_demographics;
    
    
    # REPLACE 
 
 SELECT first_name , REPLACE(first_name, 'a' , 'z') AS replacement  # Replaces characters in the column from a to z 
 FROM employee_demographics;
 
 
# LOCATE 
SELECT LOCATE('x' , 'Alexander');  # where is x in alexander = 4th character

SELECT first_name , LOCATE('An' , first_name)  # locating An in first_name column 
FROM employee_demographics;


# CONCATENATION OF MULTIPLE COLUMNS 

SELECT first_name, last_name,
CONCAT (first_name ,'   ', last_name) AS Fullname  # joins the into one column with space 
FROM employee_demographics