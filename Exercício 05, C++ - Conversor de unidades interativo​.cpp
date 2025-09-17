#include <iostream>
using namespace std;

double celsiusParaFahrenheit(double celsius){
	
	return (celsius * 1.8 + 32);
};

double celsiusParaKelvin(double celsius){
	
	return (celsius + 273);
};


int main(){
	
	int celsius;
	cout << "Digite o valor em celsius: ";
	cin >> celsius;
	
	int op;
	do{
		cout << "1. Converter Celsius para Fahrenheit" << endl 
		<< "2. Converter Celsius para Kelvin" << endl
		<< "3. Sair" << endl;
		cin >> op;
		switch(op)
		{
		case 1:
			cout << celsiusParaFahrenheit(celsius) << "F" << endl;
			break;
		case 2:
			cout << celsiusParaKelvin(celsius) << "K" << endl;
			break;
		case 3:
			break;
		}
	}while(op !=3);
	
	return 0;
};
