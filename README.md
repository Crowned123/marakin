# Домашнее задание "Резервное копирование"
# Задание 1
```
ELECT DISTINCT district_name
FROM addresses
WHERE district_name LIKE 'K%a'
  AND district_name NOT LIKE '% %';

```

# Задание 2
```
SELECT * FROM payments WHERE payment_date BETWEEN '2005-06-15' AND '2005-06-18' AND amount > 10.00;
```

# Задание 3
```
SELECT * FROM rentals ORDER BY rental_date DESC LIMIT 5;
```
# Задание 4
```
SELECT LOWER(REPLACE(first_name, 'LL', 'pp')) AS modified_first_name,
       LOWER(last_name) AS modified_last_name
FROM customers
WHERE status = 'active'
  AND (first_name = 'Kelly' OR first_name = 'Willie');

```
