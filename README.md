# Coding Assignment - Small Ecommerce Shop Datawarehouse

Your datasources are CSV exports of the operational databases of the ecommerce shop microservices. You have the following tables:

## Customer Service

### Customer
* **customer_id** (type: string) uuid for every customer
* **customer_name** (type: string) name of the customer
* **customer_email** (type: string) email of the customer
* **customer_phone** (type: string) phonenumber of the customer

## Product Service

### Product
* **product_id** (type: string) uuid for every product
* **product_name** (type: string) name of the product
* **product_customer_price** (type: float) price in USD the product is selled to the customer
* **product_purchasing_price** (type: float) price in USD the product is bought from the supplier

## Inventory Service

### Inventory
* **inventory_id** (type: string) uuid for every inventory
* **inventory_product_id** (type: string) uuid of the product which is in the inventory
* **inventory_quantity** (type: integer) number of products in the inventory
* **inventory_location** (type: string) location of the inventory

## Order Service

### Order
* **order_id** (type: string) uuid for every order
* **order_customer_id** (type: string) uuid of the customer who placed the order
* **order_total_price** (type: float) total price of the order in USD
* **order_date** (type: string) date when the order was placed
* **order_status** (type: string) status of the order (e.g. "processing", "shipped", "delivered")
* **order_shipping_address** (type: string) address where the order should be shipped
* **order_billing_address** (type: string) address where the bill should be sent
* **order_delivery_date** (type: string) date when the order was delivered
* **order_payment_method** (type: string) payment method used for the order
    * credit card, paypal, bank transfer, klarna, amazon pay
* **order_payment_status** (type: string) payment status of the order (e.g. "pending", "paid", "refunded")
* **order_payment_date** (type: string) date when the payment was made
* **order_shipping_method** (type: string) shipping method used for the order
    * dhl, dpd, ups, fedex, hermes, gls, tnt, amazon
* **order_shipping_status** (type: string) shipping status of the order (e.g. "pending", "shipped", "delivered")
* **order_shipping_date** (type: string) date when the order was shipped

### Order Items
* **order_id** (type: string) uuid of the order which contains the product, reference to order table
* **order_product_id** (type: string) uuid of the product which was ordered
* **order_quantity** (type: integer) number of products ordered

## Ask

1. Create a data model for the datawarehouse.
2. Create a data pipeline to load the data into the datawarehouse.
3. Create a SQL query to calculate the revenue per customer.
4. Create a SQL query to calculate the value of goods stored in the different inventory locations.
5. Create a SQL query to calculate the average order value per customer.
6. Run the data pipeline and execute the SQL queries on the datawarehouse.
7. Have some thought how to improve the usage of the datawarehouse.
