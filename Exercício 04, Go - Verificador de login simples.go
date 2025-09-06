package main

import (
	"fmt"
)

func verificarLogin(usuario, senha string) bool{

	if usuario == "senha"{
		if senha == "admin"{
			return true
		}else{
			return false
		}
	}else{
		return false
	}
}

func main() {

	var res bool = false
	var usuario, senha string
	var inf int = 1
	
	for inf < 2 {
		fmt.Print("Nome de usuario: ")
		fmt.Scanln(&usuario)
		fmt.Print("Senha: ")
		fmt.Scanln(&senha)
		res = verificarLogin(usuario, senha)
		if res == true{
			fmt.Print("Login bem-sucedido!")
			break
		}else{
			fmt.Print("Usuario ou senha incorretos. Tente novamente\n")
		}
	}
	
}
