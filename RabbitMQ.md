# Домашнее задание к занятию  «Очереди RabbitMQ» - `Шульгатый Станислав`

---

### Задание 1. Установка RabbitMQ

Используя Vagrant или VirtualBox, создайте виртуальную машину и установите RabbitMQ.
Добавьте management plug-in и зайдите в веб-интерфейс.

*Итогом выполнения домашнего задания будет приложенный скриншот веб-интерфейса RabbitMQ.*

---

#### Ответ:

   Cкриншот веб-интерфейса RabbitMQ: 
   
   ![RabbitMQ_1](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_1.png)

---

### Задание 2. Отправка и получение сообщений

Используя приложенные скрипты, проведите тестовую отправку и получение сообщения.
Для отправки сообщений необходимо запустить скрипт producer.py.

Для работы скриптов вам необходимо установить Python версии 3 и библиотеку Pika.
Также в скриптах нужно указать IP-адрес машины, на которой запущен RabbitMQ, заменив localhost на нужный IP.

```shell script
$ pip install pika
```

Зайдите в веб-интерфейс, найдите очередь под названием hello и сделайте скриншот.
После чего запустите второй скрипт consumer.py и сделайте скриншот результата выполнения скрипта

*В качестве решения домашнего задания приложите оба скриншота, сделанных на этапе выполнения.*

Для закрепления материала можете попробовать модифицировать скрипты, чтобы поменять название очереди и отправляемое сообщение.

---

#### Ответ:

   1. Cкриншот очереди, после отправки сообщений (посредством producer.py): 
   
   ![RabbitMQ_2](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_2.png)

   2. Cкриншот прочитанных сообщений (посредством consumer.py): 

   ![RabbitMQ_3_0](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_3_0.png)

   3. Cкриншот очереди, после прочтения сообщений (посредством consumer.py): 
   
   ![RabbitMQ_3](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_3.png)


---

### Задание 3. Подготовка HA кластера

Используя Vagrant или VirtualBox, создайте вторую виртуальную машину и установите RabbitMQ.
Добавьте в файл hosts название и IP-адрес каждой машины, чтобы машины могли видеть друг друга по имени.

Пример содержимого hosts файла:
```shell script
$ cat /etc/hosts
192.168.0.10 rmq01
192.168.0.11 rmq02
```
После этого ваши машины могут пинговаться по имени.

Затем объедините две машины в кластер и создайте политику ha-all на все очереди.

*В качестве решения домашнего задания приложите скриншоты из веб-интерфейса с информацией о доступных нодах в кластере и включённой политикой.*

Также приложите вывод команды с двух нод:

```shell script
$ rabbitmqctl cluster_status
```

Для закрепления материала снова запустите скрипт producer.py и приложите скриншот выполнения команды на каждой из нод:

```shell script
$ rabbitmqadmin get queue='hello'
```

После чего попробуйте отключить одну из нод, желательно ту, к которой подключались из скрипта, затем поправьте параметры подключения в скрипте consumer.py на вторую ноду и запустите его.

*Приложите скриншот результата работы второго скрипта.*

---

#### Ответ:

   1. Скриншот из веб-интерфейса с информацией о доступных нодах в кластере: 
   
   ![RabbitMQ_4](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_4.png)

   2. Скриншот из веб-интерфейса с информацией о включённой политикой: 

   ![RabbitMQ_5](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_5.png)

   3. Cluster status of node rabbit@deb1: 

   ![RabbitMQ_6_1](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_6_1.png)
   ![RabbitMQ_6_2](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_6_2.png)

   4. Cluster status of node rabbit@deb2:

   ![RabbitMQ_7_1](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_7_1.png)
   ![RabbitMQ_7_2](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_7_2.png)

   5. Cкриншот выполнения команды rabbitmqadmin get queue='hello' для node rabbit@deb1:

   ![RabbitMQ_8](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_8.png)

   6. Cкриншот выполнения команды rabbitmqadmin get queue='hello' для node rabbit@deb2:

   ![RabbitMQ_9](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_9.png)

   7. Cкриншот очереди, после отправки сообщений (нода rabbit@deb1 включена):

   ![RabbitMQ_10](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_10.png)

   8. Cкриншот прочитанных сообщений на ноде rabbit@deb2 (нода rabbit@deb1 выключена):

   ![RabbitMQ_11](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_11.png)

   9. Cкриншот очереди, после прочтения сообщений (нода rabbit@deb1 выключена):

   ![RabbitMQ_12](https://github.com/megasts/home_work_wnrl/blob/main/img/RabbitMQ_12.png)


---



