SELECT 
    ct.name,
    COUNT(*) AS item_count,
    AVG(od.quantity) AS avg_order_quantity
FROM
    order_details AS od
        RIGHT JOIN
    orders AS o ON o.id = od.order_id
        JOIN
    customers AS c ON o.customer_id = c.id
        JOIN
    products AS p ON od.product_id = p.id
        JOIN
    categories AS ct ON p.category_id = ct.id
        JOIN
    employees AS em ON o.employee_id = em.employee_id
        JOIN
    shippers AS sh ON o.shipper_id = sh.id
        JOIN
    suppliers AS sp ON p.supplier_id = sp.id
WHERE
    em.employee_id BETWEEN 3 AND 10
    
GROUP BY ct.name
having avg_order_quantity > 21
order by item_count desc
limit 4 offset 1
;


