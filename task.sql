USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN WarehouseFilter INT
)
BEGIN
    SELECT
        Products.id,
        Products.name
    FROM Products
    INNER JOIN ProductInventory ON Products.id = ProductInventory.ProductID
    INNER JOIN Warehouse ON Warehouse.id = ProductInventory.WarehouseID
    WHERE Warehouse.id=WarehouseFilter;
END //
DELIMITER ;
