#include <iostream>
using namespace std;

float somarArray(float arr[],int tamanho){
	
	int soma=0;
	for(int i=0;i<tamanho;i++){
		soma += arr[i];
	};
	
	return soma;
};

int main(){
	
	int tamanho;
	cout << "Quantos valores deseja entrar?" << endl;
	cin >> tamanho;
	float arr[tamanho];
	
	cout << "Digite os valores:" << endl;
	for(int i=0;i<tamanho;i++){
		cin >> arr[i];
	};
	
	cout << somarArray(arr, tamanho) << endl;
	
	return 0;
};
