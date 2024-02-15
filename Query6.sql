-- creative addition take totals from invoices to find the totals for billing countrys in Europe what they bought based on the invoice items and what track they bought based on tracks trackid

SELECT 
    c.country,
    i.billing_country,
    i.total,
    t.name
FROM
    invoice i
        JOIN
    customer c ON i.customer_id = c.customer_id
        JOIN
    invoice_line il ON i.invoice_id = il.invoice_id
        JOIN
    track t ON il.track_id = t.track_id
WHERE
    c.country IN ('Czech Republic', 'Germany', 'France', 'United Kingdom', 'Portugal', 'Ireland', 'Spain', 'Italy', 'Belgium', 'Norway', 'Denmark', 'Sweden', 'Finland', 'Netherlands', 'Austria', 'Poland', 'Hungary', 'Switzerland', 'Luxembourg', 'Greece')
GROUP BY c.country , i.billing_country , t.name;

