#include <iostream>
using namespace std;

int main(){

	int N;
	cout << "Quantas notas serao inseridas?" << endl;
	cin >> N;
	
	cout << "Digite as notas:" << endl;
	float nota,soma = 0;
	for(int i=0;i<N;i++){
		do{
		cin >> nota;
		}while(nota<0 || nota>10);
		
		soma += nota;
	};
	
	float media = (soma/N);
	cout << media << endl;
	
	if(media >= 7){
		cout << "Aprovado" << endl;
	}
	else{
		cout << "Reprovado" << endl;
	};

	return 0;
};
