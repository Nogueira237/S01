package main

import (
	"fmt"
)

func main() {

	var numero int;
	fmt.Print("Digite um numero: ")
	fmt.Scanln(&numero)

	var res int = numero%2

	switch res {
	case 0:
		fmt.Print("O número é par")
	default:
		fmt.Print("O número é impar")
	}

}
