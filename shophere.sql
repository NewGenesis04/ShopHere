
--@block
CREATE DATABASE ShopHere;


--@block
USE ShopHere;

--@block
CREATE TABLE Employee(
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL CHECK (phone REGEXP '^[0-9]{2}-[0-9]{3}-[0-9]{4}-[0-9]{3}-[0-9]{3}$')

);

--@block-
CREATE TABLE Item_details(
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(255) NOT NULL,
    item_description VARCHAR(255) NOT NULL,
    unit_price DECIMAL(10,2) CHECK(unit_price > 0),
    quantity_in_hand INT CHECK(quantity_in_hand > 0),
    reorder_level INT CHECK(reorder_level > 0),
    reorder_quantity INT CHECK(reorder_quantity > 0),
    category_id INT, CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES Product_category(category_id) ON DELETE SET NULL,
    supplier_id INT, CONSTRAINT fk_supplier_id FOREIGN KEY (supplier_id) REFERENCES Supplier_details(supplier_id) ON DELETE SET NULL
);

--@block
CREATE TABLE Order_Details(
   purchase_order_id  INT PRIMARY KEY AUTO_INCREMENT,
   employee_id INT, CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE SET NULL,
   order_date DATE ,
   receiving_date DATE,
   item_id INT, CONSTRAINT fk_item_id FOREIGN KEY (item_id) REFERENCES Item_details(item_id) ON DELETE SET NULL,
   quantity_ordered INT CHECK (quantity_ordered > 0),
   quantity_received INT NULL, CONSTRAINT CHECK (quantity_received <= quantity_ordered),
   unit_price DECIMAL(10,2) CHECK (unit_price > 0),
   ship_method VARCHAR(255) CHECK  (ship_method IN ("plane", "bike", "car", "truck", "ship")),
   order_status VARCHAR(255) CHECK (order_status IN ("In Transit", "Received", "Cancelled"))
);

--@block
CREATE TABLE Supplier_details(
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    phone VARCHAR(255)  NOT NULL CHECK (phone REGEXP '^[0-9]{2}-[0-9]{3}-[0-9]{4}-[0-9]{3}-[0-9]{3}$'),
    country VARCHAR(255) NOT NULL 
);


--@block
CREATE TABLE Product_category(
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL,
    category_description  VARCHAR(255) NOT NULL CHECK (category_description IN ("Household", "Sports", "Accessories", "Clothing"))
);






--CONSTRAINTS
--@block
ALTER TABLE Order_Details
ADD CONSTRAINT chk_receiving_date CHECK (recieving_date > order_date);

--@block
--INDEXES

--@block
CREATE INDEX idx_order_date_month_year ON Order_details (order_date);

--@block
CREATE INDEX idx_order_year ON Order_details (order_date);

--@block
CREATE INDEX idx_order_on_suppliers ON Order_Details (item_id);


--@block
--TRIGGERS

--@Block

CREATE TRIGGER update_quantity_in_hand
AFTER INSERT ON Order_details
FOR EACH ROW
BEGIN
    UPDATE Item_details
    SET quantity_in_hand = quantity_in_hand + NEW.quantity_received
    WHERE item_id = NEW.item_id;
END;

--@block
CREATE TRIGGER Update_Quantity_In_Hand_On_Update
AFTER UPDATE ON Order_details
FOR EACH ROW
BEGIN
    UPDATE Item_details
    SET quantity_in_hand = (quantity_in_hand - OLD.quantity_received) + NEW.quantity_received
    WHERE item_id = NEW.item_id;
END;


--PROCEDURES
CREATE PROCEDURE order_total_cost()

