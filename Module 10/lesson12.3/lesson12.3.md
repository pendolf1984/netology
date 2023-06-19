### Задание 1

Получите уникальные названия районов из таблицы с адресами, которые начинаются на “K” и заканчиваются на “a” и не содержат пробелов.  

### Ответ:  

``` select DISTINCT district from address where district like 'K%' and district like '%a'and district not like '% %' ```  

---

### Задание 2

Получите из таблицы платежей за прокат фильмов информацию по платежам, которые выполнялись в промежуток с 15 июня 2005 года по 18 июня 2005 года включительно и стоимость которых превышает 10.00.  

### Ответ:  

``` select payment_date, amount from payment WHERE payment_date BETWEEN '2005-06-15' and '2005-06-18 23:59:59.999' and amount > 10.00 ``` 

---

### Задание 3

Получите последние пять аренд фильмов.  

### Ответ:  

``` select * from rental ORDER BY rental_date DESC LIMIT 5 ```

---

### Задание 4

Одним запросом получите активных покупателей, имена которых Kelly или Willie.

Сформируйте вывод в результат таким образом:

* все буквы в фамилии и имени из верхнего регистра переведите в нижний регистр,  
* замените буквы 'll' в именах на 'pp'.  

### Ответ:  

``` select replace(lower(first_name),'ll','pp'), lower(last_name) from customer where active = 1 and first_name like 'Kelly' or first_name like 'Willie' ```  
