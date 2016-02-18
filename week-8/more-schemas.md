![Release 2 Schema](https://github.com/giamarinob/phase-0/blob/master/week-8/imgs/release-2-schema.png)

This is a one to one relationship because a radio station has a unique call sign 
and a call sign will refer to a specific radio station. 

![Release 3 Schema](https://github.com/giamarinob/phase-0/blob/master/week-8/imgs/release-3-schema.png)

This is a many to many relationship because an investor may be invested in many
different race horses and an individual race horse may have many different investors. 

![Release 4 Schema](https://github.com/giamarinob/phase-0/blob/master/week-8/imgs/release-4-schema.png)

#Reflection

##What is a one-to-one database?

A one to one DB is one where an item will refer to different item. Both items are
unique to one another. Item A will refer to one of Item B and an Item B will
refer to one of Item A

##When would you use a one-to-one database?

You would want to use this relationship when you have a one to one relationship,
but each item has multiple attributes that are specific to the respective items. 

##What is a many-to-many database?

This type of relationship occurs when an a particular Item A can refer to many Item B's
and a Item B can refer to many different Item A's.

##When would you use a many-to-many database?

When you have multiple relationships between items in a DB. 

##What is confusing about database schemas? What makes sense?

These seem to be relatively easy ideas to grasp. I am curious why the use of a join
table is necessary in a many to many relationship. Why not use those FK's in each
table instead of creating a seperate table called the join table. Is that just a best practice?
