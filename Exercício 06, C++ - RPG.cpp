#include <iostream>
#include <locale.h>
using namespace std;

class Personagem {
public: 
	//atributos
	string nome;
	int nivel;
	int dano;
	int vida;
	
	//construtor
	Personagem(string nome, int nivel, int dano, int vida){
		this->nome = nome;
		this->nivel = nivel;
		this->dano = dano;
		this->vida = vida;
	}
	
	//metodo para atacar
	void atacar(Personagem atacado){
		
		cout << nome << " atacou " << atacado.nome << " (Vida total: " << atacado.vida << ")" << endl << endl;
		atacado.vida -= dano;
		
		//mostrando status
		cout << "===Atacante===" << endl << "nome: " << nome << endl << "nivel: " << nivel << endl 
		<< "dano: " << dano << endl << "vida: " << vida << endl << endl;
		
		cout << "===Alvo===" << endl << "nome: " << atacado.nome << endl << "nivel: " << atacado.nivel << endl 
		<< "dano: " << atacado.dano << endl << "vida: " << atacado.vida << endl;
		
	}
	
	
};


int main(){
	setlocale( LC_ALL, "Portuguese" ); // permite acentos no console
	
	Personagem perso1("Rakan",11,20,100);
	Personagem perso2("Xayah",14,40,60);
	
	string X;
	cout << "Quem vai atacar? [P1|P2]" << endl;
	cin >> X;
	
	if(X == "P1" || X == "p1"){
		perso1.atacar(perso2);	
	}
	else if(X == "P2" || X == "p2"){
		perso2.atacar(perso1);	
	}
	else{
		cout << "ERRO" << endl;
	};
	
	
	
	
	
	return 0;
};

