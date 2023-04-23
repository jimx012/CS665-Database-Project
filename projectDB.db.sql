BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Book" (
	"Id"	INTEGER NOT NULL UNIQUE,
	"Title"	TEXT NOT NULL,
	"Author"	TEXT NOT NULL,
	"Publisher"	TEXT NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Borrower" (
	"Id"	INTEGER NOT NULL UNIQUE,
	"FullName"	TEXT NOT NULL,
	"PhoneNumber"	INTEGER,
	"Address"	TEXT NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Loan" (
	"Id"	INTEGER NOT NULL UNIQUE,
	"BookId"	INTEGER NOT NULL,
	"BorrowerId"	INTEGER NOT NULL,
	"LoanDate"	TEXT NOT NULL,
	"DueDate"	TEXT NOT NULL,
	"ReturnDate"	TEXT,
	PRIMARY KEY("Id" AUTOINCREMENT),
	FOREIGN KEY("BorrowerId") REFERENCES "Borrower"("Id"),
	FOREIGN KEY("BookId") REFERENCES "Book"("Id")
);
CREATE TABLE IF NOT EXISTS "Reservation" (
	"Id"	INTEGER NOT NULL UNIQUE,
	"BookId"	INTEGER NOT NULL,
	"BorrowerId"	INTEGER NOT NULL,
	"ReservationDate"	TEXT NOT NULL,
	"PickupDate"	TEXT NOT NULL,
	PRIMARY KEY("Id" AUTOINCREMENT),
	FOREIGN KEY("BookId") REFERENCES "Book"("Id"),
	FOREIGN KEY("BorrowerId") REFERENCES "Borrower"
);
INSERT INTO "Book" ("Id","Title","Author","Publisher") VALUES (1,'Moby Dick','Herman Melville','Harper and Brothers');
INSERT INTO "Book" ("Id","Title","Author","Publisher") VALUES (2,'Pride and Prejudice','Jane Austen','Thomas Egerton');
INSERT INTO "Book" ("Id","Title","Author","Publisher") VALUES (3,'Sense and Sensibility','Jane Austen','Thomas Egerton');
INSERT INTO "Book" ("Id","Title","Author","Publisher") VALUES (4,'The Picture of Dorian Gray','Oscar Wilde','Ward, Lock and Company');
INSERT INTO "Book" ("Id","Title","Author","Publisher") VALUES (5,'The Secret History','Donna Tartt','Alfred A. Knopf');
INSERT INTO "Borrower" ("Id","FullName","PhoneNumber","Address") VALUES (1,'Arty Tu',3169922303,'2468 Birch Street, Suite 101, Anytown, USA 56789');
INSERT INTO "Borrower" ("Id","FullName","PhoneNumber","Address") VALUES (2,'Gravy Choe',6194208554,'1357 Maple Avenue, Apt. 202, Smallville, USA 23456');
INSERT INTO "Borrower" ("Id","FullName","PhoneNumber","Address") VALUES (3,'Obi Tran',8165594520,'8024 Oak Lane, P.O. Box 456, Riverside, USA 34567');
INSERT INTO "Borrower" ("Id","FullName","PhoneNumber","Address") VALUES (4,'Boston Phan','','3690 Pine Street, Unit 303, Lakeside, USA 56789');
INSERT INTO "Borrower" ("Id","FullName","PhoneNumber","Address") VALUES (5,'Winnie Tu',9167552731,'5741 Cedar Road, Lot 456, Hillside, USA 12345');
INSERT INTO "Loan" ("Id","BookId","BorrowerId","LoanDate","DueDate","ReturnDate") VALUES (1,2,4,'April 23 2023','May 1 2023','April 28 2023');
INSERT INTO "Loan" ("Id","BookId","BorrowerId","LoanDate","DueDate","ReturnDate") VALUES (2,1,1,'March 4 2023','March 14 2023',NULL);
INSERT INTO "Loan" ("Id","BookId","BorrowerId","LoanDate","DueDate","ReturnDate") VALUES (3,4,2,'August 21 2023','August 29 2023',NULL);
INSERT INTO "Loan" ("Id","BookId","BorrowerId","LoanDate","DueDate","ReturnDate") VALUES (4,3,3,'January 5 2023','January 15 2023','January 14 2023');
INSERT INTO "Loan" ("Id","BookId","BorrowerId","LoanDate","DueDate","ReturnDate") VALUES (5,1,1,'December 31 2023','January 15 2024',NULL);
INSERT INTO "Reservation" ("Id","BookId","BorrowerId","ReservationDate","PickupDate") VALUES (1,1,1,'January 31 2023','Februrary 7 2023');
INSERT INTO "Reservation" ("Id","BookId","BorrowerId","ReservationDate","PickupDate") VALUES (2,4,2,'April 8 2023','April 9 2023');
INSERT INTO "Reservation" ("Id","BookId","BorrowerId","ReservationDate","PickupDate") VALUES (3,3,4,'June 4 2023','June 15 2023');
INSERT INTO "Reservation" ("Id","BookId","BorrowerId","ReservationDate","PickupDate") VALUES (4,1,3,'June 8 2023','October 21 2023');
INSERT INTO "Reservation" ("Id","BookId","BorrowerId","ReservationDate","PickupDate") VALUES (5,5,2,'October 23 2023','December 1 2023');
COMMIT;
