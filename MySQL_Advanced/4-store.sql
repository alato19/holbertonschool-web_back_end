-- Write a SQL script that creates a trigger that decreases the quantity of an item after adding a new order.
DELIMITER $$

-- Trigger that decreases the quantity of an item after an order is placed
CREATE TRIGGER decrease_item_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    -- Update the quantity in the items table based on the order quantity
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END $$

DELIMITER ;
