3. Create a SQL query to calculate the revenue per customer.

SELECT order_customer_id, revenue FROM
(SELECT order_id, (product_purchasing_price-product_customer_price) * order_quantity AS revenue
order_items OI LEFT JOIN Product P
ON OI.order_product_id = P.product_id
GROUP BY order_id ) AS order_revenue 
INNER JOIN
Order O
ON order_revenue.order_id = O.order_id
WHERE O.order_payment_status = “paid”;

4. Create a SQL query to calculate the value of goods stored in the different inventory locations.

SELECT inventory_location, SUM(product_purchasing_price * inventory_quantity) AS value_of_goods
Inventory I LEFT JOIN Product P
ON I.inventory_product_id = P.product_id
GROUP BY inventory_location;

5. Create a SQL query to calculate the average order value per customer.

SELECT order_customer_id, AVG(order_total_price) AS average_order_value
FROM Order 
GROUP BY order_customer_id;

