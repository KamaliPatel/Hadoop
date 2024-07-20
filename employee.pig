--CREATING A RELATION BY LOADING USER DATA FILE
users = LOAD '/user/maria_dev/employee.user' 
USING PigStorage(',') 
AS (id:int, name:chararray, age:int, designation:chararray);


--LOADING THE USERS IN HBASE TABLE
STORE users INTO 'hbase://users' 
USING org.apache.pig.backend.hadoop.hbase.HBaseStorage('employeeinfo:id employeeinfo:name employeeinfo:age employeeinfo:designation');