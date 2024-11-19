CREATE DATABASE LibraryD;
USE LibraryD;
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Genre VARCHAR(100),
    Publisher VARCHAR(100),
    YearPublished YEAR,
    Quantity INT DEFAULT 0
);

CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(150) UNIQUE,
    Phone VARCHAR(15),
    Address TEXT,
    MembershipDate DATE
);

CREATE TABLE Borrowing (
    BorrowID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    BorrowDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(150) UNIQUE,
    Phone VARCHAR(15),
    Position VARCHAR(50)
);
INSERT INTO Books (Title, Author, Genre, Publisher, YearPublished, Quantity)
VALUES 
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 'Scribner', 1925, 5),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 'J.B. Lippincott & Co.', 1960, 4),
('1984', 'George Orwell', 'Dystopian', 'Secker & Warburg', 1949, 6);
INSERT INTO Members (FirstName, LastName, Email, Phone, Address, MembershipDate)
VALUES 
('John', 'Doe', 'john.doe@example.com', '1234567890', '123 Elm St.', '2023-01-01'),
('Jane', 'Smith', 'jane.smith@example.com', '9876543210', '456 Oak St.', '2023-03-15');
INSERT INTO Borrowing (MemberID, BookID, BorrowDate, DueDate, ReturnDate)
VALUES 
(1, 1, '2023-06-01', '2023-06-15', '2023-06-14'),
(2, 3, '2023-06-05', '2023-06-20', NULL);
SELECT b.Title, b.Author, br.BorrowDate, br.DueDate, br.ReturnDate
FROM Borrowing br
JOIN Books b ON br.BookID = b.BookID
WHERE br.MemberID = 1;
SELECT m.FirstName, m.LastName, b.Title, br.DueDate
FROM Borrowing br
JOIN Members m ON br.MemberID = m.MemberID
JOIN Books b ON br.BookID = b.BookID
WHERE br.DueDate < CURDATE() AND br.ReturnDate IS NULL;
SELECT Genre, SUM(Quantity) AS TotalBooks
FROM Books
GROUP BY Genre;
INSERT INTO Members (FirstName, LastName, Email, Phone, Address, MembershipDate)
VALUES ('Alice', 'Williams', 'alice.williams@example.com', '1234567890', '789 Pine St.', CURDATE());
