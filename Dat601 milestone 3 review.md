-- Dat601 Milestone 3 review

Intro:
This review is about project milestone 3 physical implementation where all of the stages come together to create the physical database this includes table creation with all of its keys and correct data set rules, correct data representing data that the company may actually use and transactions to interact with database to perform certain functions related to the company.

Project thoughts:

For this milestone what was important was to create the tables for the database with procedures  to ensure that not only that the database works faster but also so it works more reliably and less problems occur.
Once the tables were created then  data was created to represent as accurately as possible the real life Occurrences that would be in these tables and that matches the database design. This is also important because without reliable data that represents accurately the data the company will insert into it then the following transactions may then be incorrect for the data that the company uses instead and then result in errors and problems down the road.

With the transaction part of this milestone alias are essential they are alterative names given to make a connection which is needed when writing transaction statements that is referencing multiple different entities otherwise SQL server gets confused and sends an ambiguous id error to the user meaning that it applies to different things and sql cannot differentiate between them so it needs an alias so it can.
When making the aliases for these transactions I always tried to make the alias as best suited for the object as possible to reduce confusion and just make the process easier for me.

Helpful things:
Something that helped me quite a lot with the physical implementation of this database was the database diagram maker of SQL server after using it and making a diagram of the database it helped me understand with a clear and easy to understand diagram in what state my database was in. As the database got very large this diagram helped a lot with making sure that the database still keeps to the rules defined in the previous milestones both conceptional and logical such as for example if entity, keys and relations were correct and if the data is atomic.
This diagram also helped me a lot when creating the transactions especially when setting the different alias for the different  targeted objects. The diagram was a handy in app reference that I could use to quickly check how different entities were connected to each other and what path was needed to reach something in a transaction.
Relating to professional development:
While working with different database management systems I found how much SQL server  differs to MySQL and why that’s a good thing. 
MySQL was useful  for me to initially learn SQL, but SQL server is much better suited to be used in professional development because it is less ‘loose’. An example of this is that on SQL server users are required to run an instance to run a selected function. As a result, this makes SQL more secure because it means that data cannot be accessed too easily resulting in hacking. MySQL on the other hand does not implement this feature.
Issues:
One issue I did face which wasn’t a massive hamper on progress but was still a bit annoying was the different in syntax for SQL server because I have mostly used MySQL which has different syntax. To deal with this I mostly looked up how syntax was structured for something or if I needed even more clarification looking up some examples would help a lot.
