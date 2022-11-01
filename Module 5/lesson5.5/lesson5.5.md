# Задание 1.
Дан скрипт:

```
#!/bin/bash
PREFIX="${1:-NOT_SET}"
INTERFACE="$2"

[[ "$PREFIX" = "NOT_SET" ]] && { echo "\$PREFIX must be passed as first positional argument"; exit 1; }
if [[ -z "$INTERFACE" ]]; then
    echo "\$INTERFACE must be passed as second positional argument"
    exit 1
fi

for SUBNET in {1..255}
do
	for HOST in {1..255}
	do
		echo "[*] IP : ${PREFIX}.${SUBNET}.${HOST}"
		arping -c 3 -i "$INTERFACE" "${PREFIX}.${SUBNET}.${HOST}" 2> /dev/null
	done
done
```
Измените скрипт так, чтобы:

* для ввода были доступны все параметры;
* была валидация вводимых параметров.

*Приведите ответ в виде получившегося скрипта.*  

# Ответ:  
[script.sh](script.sh)

---

# Задание 2
Измените скрипт из Задания 1 так, чтобы:

* единственным параметром для ввода остался сетевой интерфейс;
* была валидация вводимых параметров.  

# Ответ: 