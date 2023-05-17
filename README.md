# db_assignment_01

The database is a postgresql database normalized to 3.5NF.

## Denormalization
There are fields, such as publisher name, or genre, that one might consider adding to the books table. This would improve performance
by avoiding having to do a join with their respective tables.

It might also be worth it to add more information about patrons to the loans table, if you're retreiving a lot of surface level data for overviews, etc...

Though, for smaller volumes of data the extra overhead of maintaining data consistency might not be worth it.

## Diagram
![diagram](/images/diagram.png)
