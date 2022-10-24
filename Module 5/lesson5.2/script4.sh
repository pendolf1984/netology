#!/bin/bash

addition(){
	while true; do 
		read -p "Enter first number:" first
	        read -p "Enter second number:" second
		if [[ ($first =~ ^[0-9]+$) && ($second =~ ^[0-9]+$) ]]; then
			((res=$first+$second))
			echo $res
			break
		else
			echo "First and second arg must be a number"
		fi
	done
}
subtraction(){
	while true; do
                read -p "Enter first number:" first
                read -p "Enter second number:" second
                if [[ ($first =~ ^[0-9]+$) && ($second =~ ^[0-9]+$) ]]; then
		        ((res=$first-$second))
			echo $res
			break
                else
                        echo "First and second arg must be a number"
                fi
        done
}
multiplication(){
        while true; do
                read -p "Enter first number:" first
                read -p "Enter second number:" second
                if [[ ($first =~ ^[0-9]+$) && ($second =~ ^[0-9]+$) ]]; then
			((res=$first*$second))	
		        echo $res
			break
                else
                        echo "First and second arg must be a number"
                fi
        done
}
division(){
	while true; do
                read -p "Enter first number:" first
                read -p "Enter second number:" second
                if [[ ($first =~ ^[0-9]+$) && ($second =~ ^[0-9]+$) ]]; then
			if [[ $second -ne 0  ]];then
			        ((res=$first/$second))
			        echo $res
				break
			else
				echo "Division by zero"
			fi
                else
                        echo "First and second arg must be a number"
                fi
        done
}


select action in Addition Substraction Multiplication Division Quit; do
	case $action in
		Addition)
			addition
		;;
		Substraction)
			subtraction
		;;
		Multiplication)
			multiplication
		;;
		Division)
			division
		;;
		Quit)
			exit 0
		;;
		*) 
			echo "Unknown action "
	esac
done
