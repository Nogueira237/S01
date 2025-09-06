package main

import (
	"fmt"
)

func fibonacci(n int){

	var a,b int = 0,1
	var c int
	for i := 0; i < n; i++{
		fmt.Print(a, " ")
		c = a+b
		a = b
		b = c
	}
	
}

func main() {

	var n int;
	fmt.Print("Numeros da sequencia de fibonacci: ")
	fmt.Scanln(&n)

	fibonacci(n)
	
}
