### Задание 1. 

### Кейс: 
Компания ООО "Рога и Копыта" решила автоматизировать свою работу и централизировать управление учетными записями.
Руководством было принято решение развернуть пять новых серверов:

* систему контроля доступа пользователей и управления учетными записями;
* терминальный сервер;
* два сервера для веб-приложений и прокси сервер.

#### Какие ОС вы выберете для каких серверов? Почему?

*Напишите ответ в свободной форме.*

#### Ответ:
Для всех целей можно использовать ОС Linux, но я бы разделил таким образом:

* Для **системы контроля доступа пользователей и управления учетными записями** используем **серверную ОС Windows**, т.к для управления учетными записями используется Active Directory, имеющая удобную графическую оболочку и позволяющая создать единую точку аутентификации, единую точку управления политиками, единое хранилище конфигурации приложений и интегрироваться с основной массой корпоративных приложений. Из минусов - стоимость лицензии
* Для **терминального сервера** используем **серверную ОС Windows**, т.к терминальный сервер используется, в т.ч и для централизованного доступа к корпоративным приложениям, а основная масса корп. ПО разрабатывается под ОС Windows.
* Для **серверов веб-приложений и прокси сервера** можно использовать как Windows, так и Linux, но я бы выбрал Linux, т.к система более гибкая, безопасная (при грамотной настройке).

---

### Задание 2. 

#### На каких уровнях системы работают следующие службы или приложения?

* оконный менеджер;
* файловый менеджер;
* веб-браузер;
* текстовый редактор;
* калькулятор.

#### Ответ:

Калькулятор, текстовый редактор, веб-браузер, файловый менеджер  работают на уровне **пользовательских приложений**  
Оконный менеджер работает на уровне **служб операционной системы**

---

### Задание 3. 

#### Назовите по два DEB и RPM дистрибутива.

#### Ответ:
**DEB**: Ubuntu, Debian  
**RPM**: CentOS, Red Hat