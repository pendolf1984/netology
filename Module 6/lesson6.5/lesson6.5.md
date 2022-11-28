# Задание 1.
Запустите кубернетес локально, используя k3s или minikube на свой выбор. 
Добейтесь стабильной работы всех системных контейнеров.

*В качестве ответа пришлите скриншот результата выполнения команды kubectl get po -n kube-system*  

# Ответ:  

![pic1](1.PNG)  

---

# Задание 2.
Есть файл с деплоем:

```
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: redis
spec:
  selector:
    matchLabels:
      app: redis
  replicas: 1
  template:
    metadata:
      labels:
        app: redis
    spec:
      containers:
      - name: master
        image: bitnami/redis
        env:
         - name: REDIS_PASSWORD
           value: password123
        ports:
        - containerPort: 6379
```  
---
Измените файл так, чтобы:

* redis запускался без пароля;
* создайте Service, который будет направлять трафик на этот Deployment;
* версия образа redis была зафиксирована на 6.0.13.

Запустите Deployment в своем кластере и добейтесь его стабильной работы.

*Приведите ответ в виде получившегося файла.*  

# Ответ:  
1. 
```
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: redis
spec:
  selector:
    matchLabels:
      app: redis
  replicas: 1
  template:
    metadata:
      labels:
        app: redis
    spec:
      containers:
      - name: master
        image: bitnami/redis
        env:
          - name: ALLOW_EMPTY_PASSWORD
            value: "yes"
        ports:
        - containerPort: 6379
```  
2. 
```
apiVersion: v1
kind: Service
metadata:
  name: redis
spec:
  selector:
    app: redis
  ports:
    - protocol: TCP
      port: 6379
      targetPort: 6379
```  
3. 
```
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: redis
spec:
  selector:
    matchLabels:
      app: redis
  replicas: 1
  template:
    metadata:
      labels:
        app: redis
    spec:
      containers:
      - name: master
        image: bitnami/redis:6.0.13
        env:
          - name: ALLOW_EMPTY_PASSWORD
            value: "yes"
        ports:
        - containerPort: 6379

```  

---

# Задание 3.
Напишите команды kubectl для контейнера из предыдущего задания:

* выполнения команды ps aux внутри контейнера;  
* просмотра логов контейнера за последние 5 минут;  
* удаления контейнера;  
* проброса порта локальной машины в контейнер для отладки.  

*Приведите ответ в виде получившихся команд.*

# Ответ:  
* `kubectl exec -it redis-9f87ddf8b-mtmfl ps aux`  
* `kubectl logs redis-9f87ddf8b-tdhs8 --since=5m`
* `kubectl delete pod redis-9f87ddf8b-mtmfl`
* `kubectl port-forward redis-9f87ddf8b-tdhs8 5555:6666`  

---

