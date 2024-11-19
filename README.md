Library Management System 📚

This project is a Library Management System implemented in MySQL Workbench, designed to efficiently manage books, members, borrowing history, and staff operations.
It includes robust relational database schemas and SQL queries for day-to-day library operations, including book tracking, overdue monitoring, and borrowing insights.

📑 Features

Books Management: Add, update, and retrieve information about books, including availability status.

Member Management: Track members with details like registration date, contact information, and borrowing history.

Borrowing Records: Monitor books borrowed, due dates, and returned dates.

Staff Management: Maintain staff details and roles within the library.

Custom Queries: Execute advanced SQL queries for insights like overdue books, borrowing trends, and genre statistics.

🛠️ Tech Stack

Database: MySQL

Development Environment: MySQL Workbench

Programming Language: SQL

📂 Database Schema

Tables and Fields

Books

BookID (Primary Key)
Title
Author
Genre
Publisher
YearPublished
Quantity

Members

MemberID (Primary Key)
FirstName
LastName
Email
Phone
Address
MembershipDate

Borrowing

BorrowID (Primary Key)
MemberID (Foreign Key)
BookID (Foreign Key)
BorrowDate
DueDate
ReturnDate

Staff

StaffID (Primary Key)
FirstName
LastName
Email
Phone
Position

🌟 Project Highlights

Comprehensive database design with normalized schemas for efficient data handling.
Advanced SQL queries for real-time insights.
Ideal for educational purposes and practical use in library systems.
