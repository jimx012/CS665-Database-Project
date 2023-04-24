
INSERT INTO Book
    VALUES ('Scarlet Letter','Nathaniel Hawkthorne','Ticknor' );

INSERT INTO Borrower
    VALUES ('Adam West',9732059540,'314 Delaware Court Hampton, VA 23666' );

INSERT INTO Loan
    VALUES (2, 6, 'April 12 2023','April 28 2023');

INSERT INTO Reservation
    VALUES (6, 5, 'July 18 2023','August 21 2023');        


SELECT * From Book;

SELECT FullName
    FROM Borrower
    WHERE Id = '3';

SELECT LoanDate, DueDate , BorrowerId
    FROM Loan
    WHERE BookId = '4'
    
SELECT ReservationDate
    FROM Reservation
    WHERE Id = '3'
        AND BookID = '2'
 

 UPDATE Book
    SET Title = 'Emma'
    WHERE Id = 3;

Update Borrower
    SET PhoneNumber = 3167543221
    WHERE Id = 2;

UPDATE Loan
    SET ReturnDate = 'March 29 2023'
    WHERE Id = 1;

UPDATE Reservation
    SET ReservationDate = 'April 17 2023', BookID = 3
    WHERE BorrowerId = 2;


DELETE FROM Book
    WHERE Author = 'Jane Austen';

DELETE FROM Borrower
    WHERE Id = 3;  

DELETE FROM Loan
    WHERE BorrowerId = 2;
    
DELETE FROM Reservation
    WHERE ReservationDate = 'October 23 2023';              