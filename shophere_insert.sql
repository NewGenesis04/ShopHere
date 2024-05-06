
--@block
USE ShopHere

--@block
INSERT INTO Employee (first_name, last_name, city, phone) 
VALUES
('John', 'Doe', 'New York', '12-345-6789-012-345'),
('Jane', 'Smith', 'Los Angeles', '98-765-4321-987-654'),
('Alice', 'Johnson', 'Chicago', '34-567-8901-234-567'),
('Bob', 'Williams', 'Houston', '56-789-0123-456-789'),
('Mary', 'Brown', 'San Francisco', '78-901-2345-678-901'),
('Michael', 'Davis', 'Miami', '90-123-4567-890-123'),
('Emily', 'Wilson', 'Seattle', '23-456-7890-123-456'),
('David', 'Martinez', 'Boston', '45-678-9012-345-678'),
('Sarah', 'Anderson', 'Denver', '67-890-1234-567-890'),
('James', 'Taylor', 'Dallas', '89-012-3456-789-012');


--@block
INSERT INTO Product_category (category_name, category_description) VALUES
('Electronics', 'Accessories'),
('Furniture', 'Household'),
('Books', 'Accessories'),
('Toys', 'Accessories'),
('Tools', 'Household'),
('Fitness Equipment', 'Sports'),
('Jewelry', 'Accessories'),
('Apparel', 'Clothing'),
('Kitchen Appliances', 'Household'),
('Outdoor Gear', 'Sports');

--@block
INSERT INTO Supplier_details (first_name, last_name, `address`, phone, country) VALUES
('John', 'Doe', '123 Main St, Anytown', '12-012-3456-789-134', 'USA'),
('Jane', 'Smith', '456 Elm St, Othertown', '98-012-7654-321-134', 'Canada'),
('Alice', 'Johnson', '789 Oak St, Anycity', '34-012-5678-902-856', 'UK'),
('Bob', 'Williams', '321 Pine St, Anothercity', '56-012-7890-134-111', 'Australia'),
('Mary', 'Brown', '654 Maple St, Yetanothercity', '78-012-9012-356-222', 'Germany'),
('Michael', 'Davis', '987 Cedar St, Somewhere', '90-012-1234-578-333', 'France'),
('Emily', 'Wilson', '234 Birch St, Nowhere', '23-012-4567-890-512', 'Japan'),
('David', 'Martinez', '567 Spruce St, Everywhere', '45-012-6789-123-098', 'Brazil'),
('Sarah', 'Anderson', '890 Ash St, Anywhere', '67-012-8901-245-789', 'Mexico'),
('James', 'Taylor', '432 Oak St, Everywhere', '89-012-0123-567-440', 'Italy');


--@block
INSERT INTO Item_details (item_name, item_description, unit_price, quantity_in_hand, reorder_level, reorder_quantity, category_id, supplier_id) VALUES
('Laptop', 'High-performance laptop', 999.99, 50, 10, 20, 1, 1),
('Chair', 'Comfortable office chair', 149.99, 100, 20, 30, 2, 2),
('Bookshelf', 'Wooden bookshelf', 199.99, 30, 5, 10, 3, 3),
('Basketball', 'Official size basketball', 29.99, 20, 5, 10, 4, 4),
('Hammer', 'Steel claw hammer', 19.99, 50, 15, 25, 5, 5),
('Treadmill', 'Electric treadmill', 899.99, 10, 2, 5, 6, 6),
('Necklace', 'Diamond necklace', 999.99, 5, 1, 2, 7, 7),
('T-shirt', 'Cotton t-shirt', 19.99, 200, 50, 100, 8, 8),
('Blender', 'High-speed blender', 79.99, 30, 10, 20, 9, 9),
('Backpack', 'Durable backpack', 49.99, 50, 10, 20, 10, 10);


--@block
INSERT INTO Order_Details (employee_id, order_date, recieving_date, item_id, quantity_ordered, quantity_received, unit_price, ship_method, order_status) VALUES
(1, '2024-04-01', '2024-04-10', 1, 5, 5, 999.99, 'truck', 'Received'),
(2, '2024-04-02', '2024-04-11', 2, 2, 2, 149.99, 'car', 'Cancelled'),
(3, '2024-04-03', '2024-04-12', 3, 1, 1, 199.99, 'bike', 'Received'),
(4, '2024-04-04', '2024-04-13', 4, 3, 3, 29.99, 'plane', 'In Transit'),
(5, '2024-04-05', '2024-04-14', 5, 2, 2, 19.99, 'ship', 'Received'),
(6, '2024-04-06', '2024-04-15', 6, 1, 1, 899.99, 'truck', 'Received'),
(7, '2024-04-07', '2024-04-16', 7, 1, 1, 999.99, 'car', 'In Transit'),
(8, '2024-04-08', '2024-04-17', 8, 10, 10, 19.99, 'bike', 'Cancelled'),
(9, '2024-04-09', '2024-04-18', 9, 4, 4, 79.99, 'plane', 'Cancelled'),
(10, '2024-04-10', '2024-04-19', 10, 3, 3, 49.99, 'ship', 'In Transit');



--@block
SELECT * FROM ShopHere;
