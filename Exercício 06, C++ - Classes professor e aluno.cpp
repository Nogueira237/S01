#include <iostream>
#include <locale.h>
#include <list>
using namespace std;

//classe base
class Pessoa{
public:
	string nome;

	//construtor
	Pessoa(string nome){
		this->nome = nome;
	}
	//metodos
	virtual void apresentar(){		// vitual para ser sobrescrito nos filhos
		cout << "Olá, meu nome é " << nome << " e eu sou uma pessoa" << endl;
	}
};

class Professor : public Pessoa{
public: 
	string disciplina;
	
	//construtor
	Professor(string nome, string disciplina) : Pessoa(nome){
		this->disciplina = disciplina;
	}
	
	//metodos
	void apresentar() override {
		cout << "Olá, meu nome é " << nome << " e eu sou um professor de " << disciplina << endl;
	}
};

class Aluno : public Pessoa{
public: 
	string curso;
	int matricula;
	
	//construtor
	Aluno(string nome,string curso, int matricula) : Pessoa(nome){
		this->curso = curso;
		this->matricula = matricula;
	}
	
	//metodos
	void apresentar() override {
		cout << "Ola, meu nome é " << nome << " e eu sou um aluno de " << curso << endl;
	}
	
};

int main(){
	setlocale( LC_ALL, "Portuguese" ); // permite acentos no console
	
	Pessoa* prof1 = new Professor("Marcelo", "S01");
	Pessoa* alun1 = new Aluno("Eduardo", "S01", 597);
	
	list<Pessoa*> pessoas;
	pessoas.push_back(prof1);
	pessoas.push_back(alun1);
	
	for(Pessoa* it : pessoas){
		it->apresentar();
	};
	
	delete prof1;
	delete alun1;
	
	return 0;
};

