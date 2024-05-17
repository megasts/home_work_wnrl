# Домашнее задание к занятию «Кеширование Redis/memcached» - `Шульгатый Станислав`


---

### Задание 1. Кеширование 

Приведите примеры проблем, которые может решить кеширование. 

*Приведите ответ в свободной форме.*

#### Ответ:

   1. Повышение производительности достигается за счет складывания в кэш данных, к которым чаще всего происходит обращение.
   2. Увеличение скорости ответа.
   3. Экономия ресурсов базы данных, например, применяя кэширование тяжелых запросов.
   4. Сглаживание бустов трафика. Например, во время черной пятницы онлайн-магазины используют кэш, чтобы переживать резкое увеличение трафика.
---

### Задание 2. Memcached

Установите и запустите memcached.

*Приведите скриншот systemctl status memcached, где будет видно, что memcached запущен.*

#### Ответ:

![Redis_memcached_1](https://github.com/megasts/home_work_wnrl/blob/main/img/Redis_memcached_1.png)

---

### Задание 3. Удаление по TTL в Memcached

Запишите в memcached несколько ключей с любыми именами и значениями, для которых выставлен TTL 5. 

*Приведите скриншот, на котором видно, что спустя 5 секунд ключи удалились из базы.*

#### Ответ:

![Redis_memcached_2](https://github.com/megasts/home_work_wnrl/blob/main/img/Redis_memcached_2.png)

---

### Задание 4. Запись данных в Redis

Запишите в Redis несколько ключей с любыми именами и значениями. 

*Через redis-cli достаньте все записанные ключи и значения из базы, приведите скриншот этой операции.*

#### Ответ:

![Redis_memcached_3](https://github.com/megasts/home_work_wnrl/blob/main/img/Redis_memcached_3.png)

---

### Задание 5*. Работа с числами 

Запишите в Redis ключ key5 со значением типа "int" равным числу 5. Увеличьте его на 5, чтобы в итоге в значении лежало число 10.  

*Приведите скриншот, где будут проделаны все операции и будет видно, что значение key5 стало равно 10.*

#### Ответ:

![Redis_memcached_4](https://github.com/megasts/home_work_wnrl/blob/main/img/Redis_memcached_4.png)

---