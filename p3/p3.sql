SELECT 
    *
FROM
    order_details AS od
        JOIN
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
    suppliers AS sp ON p.supplier_id = sp.id;
