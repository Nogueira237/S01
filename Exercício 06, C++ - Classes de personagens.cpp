#include <iostream>
#include <locale.h>
using namespace std;

class Pessoa{
private:
	string nome;
	int idade;
public:
	//construtor
	Pessoa(string nome,int idade){
		this->nome = nome;
		this->idade = idade;
	}
	
	string getNome(){
		return nome;
	}
	int getIdade(){
		return idade;
	}
	void setNome(string nome){
		this->nome = nome;
	}
	void setIdade(int idade){
		this->idade = idade;
	}
};

class Protagonista : public Pessoa{
private:
	int nivel;
public:
	//construtor
	Protagonista(string nome,int idade, int nivel) : Pessoa(nome,idade){
		this->nivel = nivel;
	}
	
	int getNivel(){
		return nivel;
	}
	void setNivel(int nivel){
		this->nivel = nivel;
	}
};

class Personagem : public Pessoa{
private:
	int rank;
public:
	//construtor
	Personagem(string nome, int idade, int rank) : Pessoa(nome,idade){
		this->rank = rank;
	}
	
	int getRank(){
		return rank;
	}
	void setRank(int rank){
		this->rank = rank;
	}
	
};

int main(){
	setlocale( LC_ALL, "Portuguese" ); // permite acentos no console
	
	Protagonista prota1("Xerath", 16, 5);
	Personagem perso2("Malzahar",17,9);
	
	// protagonista
	cout << "Nome: " << prota1.getNome() << endl
	<< "Idade: " << prota1.getIdade() << endl
	<< "Nível: " << prota1.getNivel() << endl << endl;
	
	// personagem
	cout << "Nome: " << perso2.getNome() << endl
	<< "Idade: " << perso2.getIdade() << endl
	<< "Rank: " << perso2.getRank() << endl;
	
	
	
	
	
	return 0;
};

