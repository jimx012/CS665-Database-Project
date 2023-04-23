Attribute Acronyms:
NN - Not Null
PK - Primary Key
FK - Foreign Key
U - Unique
AI - Auto Increment
The following database includes 4 tables with the following attributes, primary keys and foreign keys:
Book - Id(int, PK, NN, U), Title(text, NN), Author(text, NN), Publisher(text, NN)
Borrower - Id(int, PK, NN, U), FullName(text, NN), PhoneNumber(int), Address(text, NN) 
Loan - Id(int, PK, NN, U), BookId(int, FK, NN), BorrowerId(int, FK, NN), LoanDate(text, NN), DueDate(text, NN), ReturnDate(text, NN)
Reservation - Id(int, PK, NN, U), BookId(int, FK, NN), BorrowerId(int, FK, NN), ReservationDate(text, NN), PickupDate(text, NN)
The foreign key constraints are on the Loan and Reservation tables. Both of which include BookId and BorrowerId as their attributes. BookId is a foreign key which references the Id on the Book table while BorrowerId references the Id on the Borrower table.
There are functional dependencies on the Book table and Borrower table. The book table has a functional dependency where if you know the Id of the book, you know the Title, Author and Publisher column values. Similarly on the borrowers table, if you know the Borrowers Id, you know the FullName, PhoneNumber and Address of that borrower.
The database meets 3NF because it meets the requirements of 1NF and 2NF. It has unique column anmes on each table, no repeating groups and it follows atomicity. It also has primary keys on every table and there are no partial dependencies.
Sample Data:
Book: 		(1,'Moby Dick','Herman Melville','Harper and Brothers')
		(2,'Pride and Prejudice','Jane Austen','Thomas Egerton')

Borrower:		(1,'Arty Tu',3169922303,'2468 Birch Street, Suite 101, Anytown, USA 56789')
		(2,'Gravy Choe',6194208554,'1357 Maple Avenue, Apt. 202, Smallville, USA 23456')

Loan: 		(1,2,4,'April 23 2023','May 1 2023','April 28 2023')
		(2,1,1,'March 4 2023','March 14 2023',NULL)

Reservation: 	(1,1,1,'January 31 2023','Februrary 7 2023')
		(2,4,2,'April 8 2023','April 9 2023')

There must be some policies on foreign key constraints which includes adding CASCADE ON DELETE. Whenever a book is deleted from the Book table, delete the related Loan and Reservation with the same associated BookId. Same with Borrower, if a borrower is deleted, Delete the Loan and Reservation with the associated BorrowerId













