USE fitness_exercise;
CREATE TABLE Members (
	id INT AUTO_INCREMENT PRIMARY 
KEY,
	name VARCHAR(255) NOT NULL,
    age INT,
    trainer_id INT
);

INSERT INTO Members (name, age, trainer_id)
VALUES
('Jane Doe', 15, '12'),
('Laney', 29, '17'),
('Lisa', 18, '16');

CREATE TABLE Session (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Morning TIME,
    Afternoon TIME,
    Night TIME,
    member_id INT,
   FOREIGN KEY (member_id) REFERENCES Members(id)

);

INSERT INTO Session (Morning, Afternoon, Night) VALUES 
('09:00:00', NULL, NULL),  -- Assuming '9am' corresponds to 9:00 AM
(NULL, '14:00:00', NULL),  -- Assuming '2pm' corresponds to 2:00 PM
(NULL, NULL, '20:00:00');  -- Assuming '8pm' corresponds to 8:00 PM

ALTER TABLE Session MODIFY Afternoon VARCHAR(255);
UPDATE Session SET Afternoon = 'Kelsey' WHERE id = 3;

DELETE FROM members
WHERE id = 3;

CREATE TABLE Department (
	id INT AUTO_INCREMENT PRIMARY
KEY, 
	sales VARCHAR(100) NOT NULL,
    customer_service VARCHAR(100) NOT NULL,
    tech VARCHAR(100) NOT NULL
);

INSERT INTO Department (sales, customer_service, tech)  
VALUES  
('sales', '', ''),  
('', 'customer_service', ''),  
('', '', 'tech');


CREATE TABLE Employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Departments (
	department_id INT PRIMARY
KEY,
	department_name VARCHAR(100)
);



	


