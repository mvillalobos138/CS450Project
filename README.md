# CS450Project
CS450 Database Project


General. 

Your project is to build a hotel reservation system for a travel agency called
SimpleTravel. At the back-end, SimpleTravel manages all of its data in the Oracle
DBMS. At the front-end, you are required to implement a command-line interface to its
users using Java and JDBC (although if you love challenge and want to build a web
interface, you can do so for extra credit).
I will expect certain minimal functionality in your reservation system - beyond that, the
sky's the limit. Minimal functionality includes a variety of queries and browsing
capabilities over the current reservations, as well as looking up availability of rooms
given dates and party size (or room type). Various integrity constraints must be
monitored. For example, a reservation for a party of 5 should not be allowed on a room
type that holds only 4 people.
The followings are the “basic” information that the database should store:

1. Hotel: Hotel name and branch ID (the combination of name and ID is unique),
    address (including city, state, zip so the user can search for a certain location), and
    phone number
2. Room: Room type (2-queens, 1-king, suite, etc.) and capacity.
3. Customer: customer ID (unique), name, age, gender.
4. Reservation: reservation number (unique), customer ID, check-in date, check-out
    date, party size, type of room, and total price (should be automatically calculated).
5. Availability: Keep track of the number of rooms left for any date and any room
    type. When a reservation is made (i.e. a new tuple is inserted into the Reservation
    relation), the relevant available room count should be updated.
6. Price List: The price list has prices for all room types, on all dates within some date
    range.

Obviously, you don’t need to insert prices into the database for the whole
year, but you’ll need to insert enough data to test your queries.
Note: The descriptions above summarize the minimal information your database should
contain. It does not necessarily imply the organization of the relations. You may rearrange
the attributes or add more attributes/entity types. For example, you will likely
need a relation to store the dates. The design decision is yours, but your design should be reasonably efficient, and well justified. You will be graded on both correctness and
quality of the design.
The project accounts for 15% of your total grade.

Phase 1 (3%): Conceptual Design. You need to submit a corresponding ER diagram
  according to the project description and the assumption you have made. Discuss whether
  there are any requirements that cannot be captured with the ER diagram.
Phase 2 (3%): Schema Design & Database Implementation. After your conceptual
  design is finished, you need to translate the ER diagram into relation schema. For this
  phase, submit the following:
  
  (1) your relation schema based on your (revised?) ER diagram
  (2) SQL script that you use to implement your database, including all necessary
      triggers (e.g. to update available room count, to check whether a valid room type
      is selected based on party size, to calculate total price)

Phase 3 (7%): JDBC Implementation. Write a program in JDBC that will allow users
  to access and query your database. Command-line menu is acceptable. You can create
  and populate your database using the script from Phase 2. More information on this phase
  will be given later in the semester. In general, your program should allow users to do the
  following:
    1. View table content: Give user a list of existing tables so that he/she can select one
      to view the tuples.
    2. Add records: Enter information for new customers, hotels, room types,
      reservations, etc. Update/delete information.
    3. Search database: search for a given user’s reservation(s), search availability and
      prices for hotels in a given location, for a certain party size (or room type), on
      given check-in and check-out dates.

Extra credit (2%): Instead of command-line interface, you can create a graphical user
interface (GUI) for extra credit. 
