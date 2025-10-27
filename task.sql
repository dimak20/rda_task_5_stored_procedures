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
    INNER JOIN Warehouse ON Warehouse.ID = ProductInventory.WarehouseID
    WHERE Warehouse.ID=WarehouseFilter;
END //
DELIMITER ;
