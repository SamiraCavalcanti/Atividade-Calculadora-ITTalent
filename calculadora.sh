#!/bin/bash

while true; do
    read -p "Escolha uma das opções: 1-soma, 2-divisão, 3-subtração, 4-multiplicação, 5-sair: " menu

    if [[ $menu -eq 5 ]]; then
        echo "Saindo da calculadora."
        break
    fi

    read -p "Digite o primeiro número inteiro: " num1
    read -p "Digite o segundo número inteiro: " num2

    soma=$(($num1 + $num2))
    divisao=$(($num1 / $num2))
    subtracao=$(($num1 - $num2))
    multiplicacao=$(($num1 * $num2))

    if [[ $menu -eq 1 ]]; then
        echo "O resultado da soma é: $soma"
    elif [[ $menu -eq 2 ]]; then
        echo "O resultado da divisão é: $divisao"
    elif [[ $menu -eq 3 ]]; then
        echo "O resultado da subtração é: $subtracao"
    elif [[ $menu -eq 4 ]]; then
        echo "O resultado da multiplicação é: $multiplicacao"
    else
        echo "Opção inválida."
    fi
done

