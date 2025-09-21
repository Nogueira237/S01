#include <iostream>
#include <locale.h>
#include <list>
using namespace std;

//classe base
class SerVivo{
public:
	string nome;
	
	//construtor
	SerVivo(string nome){
		this->nome = nome;
	};
	//metodos
	virtual void apresentar(){		// virtual pra ser sobrescrito nos filhos
		cout << "lorem ipsum" << endl;
	}
};

class Humano : public SerVivo{
public:

	//construtor
	Humano(string nome) : SerVivo(nome){};
	
	//metodos
	void apresentar() override{
		cout << "Meu nome é " << nome << " e eu sou um(a) humano(a)" << endl;
	}
};

class Elfo : public SerVivo{
public:
	//construtor
	Elfo(string nome) : SerVivo(nome){};
	
	//metodos
	void apresentar() override{
		cout << "Meu nome é " << nome << " e eu sou um(a) elfo(a)" << endl;
	}
};

class Fada : public SerVivo{
public:
	//construtor
	Fada(string nome) : SerVivo(nome){};
	
	//metodos
	void apresentar() override{
		cout << "Meu nome é " << nome << " e eu sou uma fada" << endl;
	}
};


int main(){
	setlocale( LC_ALL, "Portuguese" ); // permite acentos no console
	
	list<SerVivo*> geral;
	
	SerVivo* humano1 = new Humano("Touka");
	SerVivo* elfo1 = new Elfo("Ashrain");
	SerVivo* fada1 = new Fada("Elulu");
	
	geral.push_back(humano1);
	geral.push_back(elfo1);
	geral.push_back(fada1);
	
	for(SerVivo* it : geral){
		it->apresentar();
	};
	
	delete 	humano1;
	delete 	elfo1;
	delete 	fada1;
	
	return 0;
};

