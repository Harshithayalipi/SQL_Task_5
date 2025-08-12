USE task4_db;
-- By using the the task4 data base created a new table as Buyers
CREATE TABLE buyers (
    buyer_id INT PRIMARY KEY AUTO_INCREMENT,
    buyer_name VARCHAR(50),
    item_id INT,
    purchase_date DATE,
    FOREIGN KEY (item_id) REFERENCES electronics(item_id)
);
-- inserting the data to buyers table
INSERT INTO buyers (buyer_name, item_id, purchase_date) VALUES
('Alice', 1, '2025-08-01'),
('Bob', 2, '2025-08-02'),
('Charlie', 4, '2025-08-03'),
('David', 1, '2025-08-04'),
('Eva', 6, '2025-08-05'),
('Frank', NULL, '2025-08-06'); 

-- Taken buyers table as Table 1 and Electronics table as Table 2

-- INNER JOIN
SELECT buyers.buyer_name, electronics.item_name, electronics.price
FROM buyers
INNER JOIN electronics
ON buyers.item_id = electronics.item_id;

-- LEFT JOIN
SELECT buyers.buyer_name, electronics.item_name
FROM buyers
LEFT JOIN electronics
ON buyers.item_id = electronics.item_id;

-- RIGHT JOIN
SELECT buyers.buyer_name, electronics.item_name
FROM buyers
RIGHT JOIN electronics
ON buyers.item_id = electronics.item_id;

-- FULL JOIN
SELECT buyers.buyer_name, electronics.item_name
FROM buyers
LEFT JOIN electronics
ON buyers.item_id = electronics.item_id
UNION
SELECT buyers.buyer_name, electronics.item_name
FROM buyers
RIGHT JOIN electronics
ON buyers.item_id = electronics.item_id;




