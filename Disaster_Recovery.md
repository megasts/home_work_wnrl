# Домашнее задание к занятию 1 «Disaster recovery и Keepalived» - `Шульгатый Станислав`


------


### Задание 1
- Дана [схема](1/hsrp_advanced.pkt) для Cisco Packet Tracer, рассматриваемая в лекции.
- На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)
- Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).
- Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.
- На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.

#### Ответ:

1. Скан настройки Router1: ![Disaster_recovery_router_1](https://github.com/megasts/home_work_wnrl/blob/main/img/Disaster_recovery_router_1.png)
2. Скан настройки Router2: ![Disaster_recovery_router_2](https://github.com/megasts/home_work_wnrl/blob/main/img/Disaster_recovery_router_2.png)
3. Проверка корректности настройки:
   3.1. ![Disaster_recovery_check2](https://github.com/megasts/home_work_wnrl/blob/main/img/Disaster_recovery_check2.png)
   3.2. ![Disaster_recovery_check1](https://github.com/megasts/home_work_wnrl/blob/main/img/Disaster_recovery_check1.png)
4. Файл PKT: https://github.com/megasts/home_work_wnrl/blob/main/hsrp_advanced_ch.pkt

------


### Задание 2
- Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного [файла](1/keepalived-simple.conf).
- Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах
- Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.
- Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Используйте для этого секцию vrrp_script
- На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html

#### Ответ:

1. bash-скрипт: https://github.com/megasts/home_work_wnrl/blob/main/check_web.sh
2. конфигурационный файл keepalived: https://github.com/megasts/home_work_wnrl/blob/main/keepalived.conf
3. скриншоты сдемонстрацией переезда плавающего ip на другой сервер:
   3.1. плавающий ip на основном сервере (80 порт доступен, файл присутствует) 
   ![Disaster_recovery_2_standart](https://github.com/megasts/home_work_wnrl/blob/main/img/Disaster_recovery_2_standart.png)
   3.2. не найден файл на осносном сервере
   ![Disaster_recovery_2_not_found_index](https://github.com/megasts/home_work_wnrl/blob/main/img/Disaster_recovery_2_not_found_index.png)
   3.3. не доступен web сервер на осносном сервере
   ![Disaster_recovery_2_web_server_down](https://github.com/megasts/home_work_wnrl/blob/main/img/Disaster_recovery_2_web_server_down.png)
   3.4. вернули все на место
   ![Disaster_recovery_2_return](https://github.com/megasts/home_work_wnrl/blob/main/img/Disaster_recovery_2_return.png)


------

