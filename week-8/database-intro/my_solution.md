#Release 4

1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states ORDER BY population DESC;
5. SELECT state\_name FROM states WHERE region\_id = 7;
6. SELECT state\_name, population\_density FROM states WHERE population\_density > 50 ORDER BY population\_density ASC;
7. SELECT state\_name FROM states WHERE population > 1000000 AND population < 1500000;
8. SELECT state\_name, region\_id FROM states ORDER BY region\_id ASC;
9. SELECT region\_name FROM regions WHERE region\_name LIKE '%central';
10. SELECT state\_name, region\_name FROM states, regions ORDER BY region\_id ASC;



[Release 6: Your Own SCHEMA]('clueless-schema-diagram.png')

#Reflect

##What are databases for?

Databases are efficient ways to store large amounts of information. They are used 
when using an array or hash is not feasible due to sheer size. 

##What is a one-to-many relationship?

This relationship refers to when multiple items in a DB table refer to a single item 
in a seperate table within the DB.

##What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is a key that is unique to each item. When referencing the primary 
key within a DB table you know you will get a specific value back. A foriegn key
is a key within a table that references the primary key of another table. A primary
key will never repeat within a table. And that key will point to a specific item.

##How can you select information out of a SQL database? What are some general guidelines for that?

You can use the SELECT and FROM commands to select certain information from a given
table within a DB. 