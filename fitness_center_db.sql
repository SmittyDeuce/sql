CREATE DATABASE fitness_center_db;
use fitness_center_db;

CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    age INT
);


CREATE TABLE WorkoutSessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (first_name, last_name, age)
VALUES
("John", "Smith", 34),
("Jane", "Doe", 22),
("David", "Griffin", 45),
("Joe", "Dirt", 30);

SELECT * from members;

set @member_id = 4;

insert into WorkoutSessions (member_id, session_date, session_time, activity)
VALUES
(@member_id, "2024-06-18", "9:30 AM", "Dance");

select * from workoutsessions;

UPDATE workoutsessions
set session_time = "4:30 PM"
where member_id = 2;

set sql_safe_updates = 0;

DELETE from workoutsessions
where member_id = 1;


DELETE from members
where lower(first_name) = "John" and lower(last_name) = "Smith";

set sql_safe_updates = 1;