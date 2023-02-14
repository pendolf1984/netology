### Задание 1

Разверните топологию из лекции и выполните установку и настройку сервиса Keepalived.

```
vrrp_instance test {

state "name_mode"

interface "name_interface"

virtual_router_id "number id"

priority "number priority"

advert_int "number advert"

authentication {

auth_type "auth type"

auth_pass "password"

}

unicast_peer {

"ip address host"

}

virtual_ipaddress {

"ip address host" dev "interface" label "interface":vip

}

}
```

*Пришлите скриншот рабочей конфигурации и состояния сервиса для каждого нода.*  

### Ответ:  

![Pic1](1.png)  

![Pic2](2.png)  

![Pic3](3.png)  

---

