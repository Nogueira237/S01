package main

import (
	"fmt"
)

func classificar_numero(num int) string {

	if num > 0 {
		return "positivo"
	} else if num < 0 {
			return "negativo"
	} else {
			return "igual a zero"
	}
	
}

func main() {

	var num int;
	fmt.Print("Digite um numero: ")
	fmt.Scanln(&num)

	var res string = classificar_numero(num)

	fmt.Print("Seu numero é ", res)
  
}
