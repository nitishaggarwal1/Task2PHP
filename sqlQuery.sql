SELECT broker.broker_name, COUNT(customer.customer_id)
FROM sql.broker INNER JOIN sql.customer 
WHERE broker.broker_id = customer.broker_id
GROUP BY broker.broker_id
ORDER BY count(customer.customer_id) DESC, broker.broker_name;