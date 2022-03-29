CREATE Database IF NOT EXISTS RRPP;
use RRPP;

CREATE TABLE Events(
    Event_ID VARCHAR (4) PRIMARY KEY,
    Event_Name VARCHAR (20),
    Event_Date DATE,
    Event_Capacity INTEGER (5),
);

CREATE TABLE Employees(
    Emp_ID VARCHAR (5) PRIMARY KEY,
    Event_ID VARCHAR (4),
    Emp_Name VARCHAR (30),
    Emp_BirthDate DATE,
    Emp_Position VARCHAR (20),
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID)
);

CREATE TABLE Tickets(
    Ticket_ID VARCHAR (5) PRIMARY KEY,
    Event_ID VARCHAR (4),
    Client_Name VARCHAR (30),
    Ticket_Type VARCHAR (20)
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID)
);
--! change the path from /tmp/employee.csv
LOAD DATA INFILE '/tmp/employee.csv'
INTO TABLE Emplo
LOAD DATA LOCAL INFILE '/path/pet.txt' INTO TABLE pet;