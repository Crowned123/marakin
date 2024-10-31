# Маракин Э.Ю
# Домашнее задание к занятию «SQL. Часть 2»
# Задание 1
```
SELECT 
    e.last_name AS "Фамилия сотрудника", 
    e.first_name AS "Имя сотрудника",
    s.city AS "Город магазина",
    COUNT(c.customer_id) AS "Количество пользователей"
FROM employees e
JOIN stores s ON e.store_id = s.store_id
JOIN customers c ON s.store_id = c.store_id
GROUP BY e.employee_id, e.last_name, e.first_name, s.city
HAVING COUNT(c.customer_id) > 300;

```

# Задание 2
```
SELECT COUNT(*) AS "Количество фильмов"
FROM movies
WHERE duration > (SELECT AVG(duration) FROM movies);
```

# Задание 3
```
WITH monthly_payments AS (
    SELECT 
        DATE_TRUNC('month', payment_date) AS month,
        SUM(amount) AS total_payments
    FROM payments
    GROUP BY month
)
SELECT 
    mp.month AS "Месяц",
    mp.total_payments AS "Наибольшая сумма платежей",
    COUNT(r.rental_id) AS "Количество аренд"
FROM monthly_payments mp
JOIN rentals r ON DATE_TRUNC('month', r.rental_date) = mp.month
WHERE mp.total_payments = (SELECT MAX(total_payments) FROM monthly_payments)
GROUP BY mp.month, mp.total_payments;


Исправил:
WITH monthly_payments AS (
    SELECT 
        DATE_FORMAT(payment_date, '%Y-%m') AS month,
        SUM(amount) AS total_payments
    FROM payments
    GROUP BY month
)
SELECT 
    mp.month AS "Месяц",
    mp.total_payments AS "Наибольшая сумма платежей",
    COUNT(r.rental_id) AS "Количество аренд"
FROM monthly_payments mp
JOIN rentals r ON DATE_FORMAT(r.rental_date, '%Y-%m') = mp.month
WHERE mp.total_payments = (SELECT MAX(total_payments) FROM monthly_payments)
GROUP BY mp.month, mp.total_payments;
```


