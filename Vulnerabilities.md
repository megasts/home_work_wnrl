# Домашнее задание к занятию «Уязвимости и атаки на информационные системы» - `Шульгатый Станислав`


------

### Задание 1

Скачайте и установите виртуальную машину Metasploitable: https://sourceforge.net/projects/metasploitable/.

Это типовая ОС для экспериментов в области информационной безопасности, с которой следует начать при анализе уязвимостей.

Просканируйте эту виртуальную машину, используя **nmap**.

Попробуйте найти уязвимости, которым подвержена эта виртуальная машина.

Сами уязвимости можно поискать на сайте https://www.exploit-db.com/.

Для этого нужно в поиске ввести название сетевой службы, обнаруженной на атакуемой машине, и выбрать подходящие по версии уязвимости.

Ответьте на следующие вопросы:

- Какие сетевые службы в ней разрешены?
- Какие уязвимости были вами обнаружены? (список со ссылками: достаточно трёх уязвимостей)
  
#### Ответ:

- Какие сетевые службы в ней разрешены:

![Redis_memcached_1](https://github.com/megasts/home_work_wnrl/blob/main/img/Redis_memcached_1.png)

- Какие уязвимости были вами обнаружены? (список со ссылками: достаточно трёх уязвимостей)

```
https://www.exploit-db.com/exploits/49757
https://www.exploit-db.com/exploits/41769
https://www.exploit-db.com/exploits/40962
```
------

### Задание 2

Проведите сканирование Metasploitable в режимах SYN, FIN, Xmas, UDP.

Запишите сеансы сканирования в Wireshark.

Ответьте на следующие вопросы:

- Чем отличаются эти режимы сканирования с точки зрения сетевого трафика?
- Как отвечает сервер?

#### Ответ:
1. Режим SYN: На исследуемый порт посылается сообщение SYN, как бы намереваясь открыть настоящее соединение, затем идет ожидание ответа, на основании которого определяется статус порта. Ответы SYN/ACK говорят о том, что порт прослушивается (открыт), а ответ RST говорит о том, что не прослушивается.

![Vulnerabilities_SIN](https://github.com/megasts/home_work_wnrl/blob/main/img/Vulnerabilities_SIN.png)

2. Режим FIN: в TCP заголовок ставится флаг FIN. Согласно RFC 793, на прибывший FIN-пакет на закрытый порт сервер должен ответить пакетом RST. FIN-пакеты на открытые порты должны игнорироваться сервером. По этому различию становится возможным отличить закрытый порт от открытого. Ошибка достижимости ICMP означает, что порт фильтруется.

![Vulnerabilities_FIN](https://github.com/megasts/home_work_wnrl/blob/main/img/Vulnerabilities_FIN.png)

3. Режим Xmas: в TCP заголовок устанавливаются FIN, PSH и URG флаги. Далее по аналогии с режимом FIN.

![Vulnerabilities_Xmas](https://github.com/megasts/home_work_wnrl/blob/main/img/Vulnerabilities_Xmas.png)

4. Режим UDP: Для определения статуса порта посылается пустой UDP-заголовок, и если в ответ приходит ошибка достижимости ICMP Destination Unreachable с кодом Destination port unreachable, это значит, что порт закрыт; другие ошибки достижимости ICMP (Destination host unreachable, Destination protocol unreachable, Network administratively prohibited, Host administratively prohibited, Communication administratively prohibited) означают, что порт фильтруется. Если порт отвечает UDP-пакетом, значит, он открыт. Из-за специфики UDP и потери пакетов запросы повторяются несколько раз, обычно три и более.

![Vulnerabilities_UDP](https://github.com/megasts/home_work_wnrl/blob/main/img/Vulnerabilities_UDP.png)



------