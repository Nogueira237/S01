class Personagem{

    constructor(nome, idade){
        this.nome = nome;
        this.idade = idade;
    }

}

class Protagonista extends Personagem{
    #diario = null;
    constructor(nome, idade, diario){
        super(nome,idade);
        this.#diario = diario;
    }

    getDiario(){
        return this.#diario;
    }
}
class Criatura{

    constructor(nome,perigosa = false){
        this.nome = nome;
        this.perigosa = perigosa;
    }
}

class Diario{
    #autorSecreto = 'ninguem';
    #enigmas =  new Map();
    #criaturasAvistadas = [];

    constructor(autor){
        this.#autorSecreto = autor;
    }

    getAutor(){
        return this.#autorSecreto;
    }

    adicionarEnigma(num, enigma){
        this.#enigmas.set(num, enigma);
    }

    adicionarCriatura(criatura){
        this.#criaturasAvistadas.push(criatura);
    }

    decodificar(chave, num){
        if(chave !== this.#autorSecreto){
            return "Acesso negado!";
        }
        else{
            return `Acesso liberado\nDecodificando: ${this.#enigmas.get(num)}`
        }
    }

}

class CabanaMisterio{
    
    constructor(diario, funcionarios = []){
        this.diario = diario;
        this.funcionarios = funcionarios;
    }

    // metodo
    listarFuncionarios(){
        return this.funcionarios;
    }
}

// MAIN

const diario3 = new Diario('Dipper');

// Adicionando os enigmas
diario3.adicionarEnigma(1, 'Enigma 1');
diario3.adicionarEnigma(2, 'Enigma 2');

// Adicionando criaturas
diario3.adicionarCriatura(new Criatura('Goblin', false));
diario3.adicionarCriatura(new Criatura('Orc', true));

// Adicionando personagens
const dipper = new Protagonista('Dipper', 12, diario3);
const mabel = new Personagem('Mabel', 12);

// Adicionando cabana com funcionários
const cabana = new CabanaMisterio(diario3, [dipper, mabel]);

console.log(cabana.listarFuncionarios());   // mostra os funcionários
console.log(diario3.decodificar('Mabel', 1));   // personagem NÃO autor tenta decodificar
console.log(diario3.decodificar('Dipper', 1));  // personagem autor tenta decodificar
