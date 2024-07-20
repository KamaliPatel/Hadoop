--CREATING A RELATION BY LOADING USER DATA FILE
users = LOAD '/user/maria_dev/netflix_titles.csv' 
USING PigStorage(',') 
AS (type:chararray, title:chararray, country:chararray, release_year:int, rating:chararray);


--LOADING THE USERS IN HBASE TABLE
STORE users INTO 'hbase://users' 
USING org.apache.pig.backend.hadoop.hbase.HBaseStorage(movieinfo:type,movieinfo:title,movieinfo:country,movieinfo:release_year,movieinfo:rating');