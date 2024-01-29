# Домашнее задание к занятию «ELK» - `Шульгатый Станислав`

------

### Задание 1. Elasticsearch 

Установите и запустите Elasticsearch, после чего поменяйте параметр cluster_name на случайный. 

*Приведите скриншот команды 'curl -X GET 'localhost:9200/_cluster/health?pretty', сделанной на сервере с установленным Elasticsearch. Где будет виден нестандартный cluster_name*.

#### Ответ:

   Скриншот команды'curl -X GET 'localhost:9200/_cluster/health?pretty' после изменения параметра cluster_name: ![ELK_1](https://github.com/megasts/home_work_wnrl/blob/main/img/ELK_1.png)

------

### Задание 2. Kibana

Установите и запустите Kibana.

*Приведите скриншот интерфейса Kibana на странице http://<ip вашего сервера>:5601/app/dev_tools#/console, где будет выполнен запрос GET /_cluster/health?pretty*.

#### Ответ:

   Скриншот интерфейса Kibana при выполнении запроса GET /_cluster/health?pretty*: ![ELK_2](https://github.com/megasts/home_work_wnrl/blob/main/img/ELK_2.png)

------

### Задание 3. Logstash

Установите и запустите Logstash и Nginx. С помощью Logstash отправьте access-лог Nginx в Elasticsearch. 

*Приведите скриншот интерфейса Kibana, на котором видны логи Nginx.*

#### Ответ:

   Скриншот интерфейса Kibana, на котором видны логи Nginx, собираемые Logstash и передаваемые в Elasticsearch: ![ELK_3](https://github.com/megasts/home_work_wnrl/blob/main/img/ELK_3.png)

------

### Задание 4. Filebeat. 

Установите и запустите Filebeat. Переключите поставку логов Nginx с Logstash на Filebeat. 

*Приведите скриншот интерфейса Kibana, на котором видны логи Nginx, которые были отправлены через Filebeat.*

#### Ответ:

   Скриншот интерфейса Kibana, на котором видны логи Nginx, собираемые Filebeat отправляются в Logstash и передаются в Elasticsearch: ![ELK_4](https://github.com/megasts/home_work_wnrl/blob/main/img/ELK_4.png)

------

## Дополнительные задания (со звёздочкой*)
Эти задания дополнительные, то есть не обязательные к выполнению, и никак не повлияют на получение вами зачёта по этому домашнему заданию. Вы можете их выполнить, если хотите глубже шире разобраться в материале.

### Задание 5*. Доставка данных 

Настройте поставку лога в Elasticsearch через Logstash и Filebeat любого другого сервиса , но не Nginx. 
Для этого лог должен писаться на файловую систему, Logstash должен корректно его распарсить и разложить на поля. 

*Приведите скриншот интерфейса Kibana, на котором будет виден этот лог и напишите лог какого приложения отправляется.*
