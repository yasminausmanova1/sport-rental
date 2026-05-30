INSERT INTO Clients(full_name, phone)
VALUES
('Иван Иванов', '111111'),
('Петр Петров', '222222');

INSERT INTO Inventory(item_name, price_per_day)
VALUES
('Велосипед', 1000),
('Самокат', 700),
('Палатка', 500);

INSERT INTO Employees(employee_name)
VALUES
('Анна'),
('Олег');

INSERT INTO Booking(client_id, item_id, employee_id, start_date, end_date)
VALUES
(1,1,1,'2026-05-01','2026-05-05'),
(2,2,2,'2026-05-03','2026-05-06'),
(1,3,1,'2026-05-10','2026-05-15');

INSERT INTO Returns(booking_id, condition_after)
VALUES
(1,'Хорошее'),
(2,'Отличное');
