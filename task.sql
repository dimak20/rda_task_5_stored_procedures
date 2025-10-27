USE ShopDB;

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
	IN WarehouseFilter INT
)
BEGIN
    SELECT
        ProductInventory.WarehouseAmount,
        Products.Name
    FROM Products
    INNER JOIN ProductInventory ON Products.ID = ProductInventory.ProductID
    INNER JOIN Warehouses ON Warehouses.ID = ProductInventory.WarehouseID
    WHERE Warehouses.ID=WarehouseFilter;
END //
DELIMITER ;
