// classe base
class Pokemon {

    #vida = 0; // atributo privado

    constructor(nome, tipo, vidaInicial){
        this.nome = nome;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    // metodos
    getVida(){
        return this.#vida;
    }
    receberDano(dano){
        this.#vida -= dano;
    }

    atacar(alvo){
        return `${this.nome} atacou ${alvo}`;
    }

}

class PokemonFogo extends Pokemon{

    constructor(nome, vidaInicial, bonus){
        super(nome, "fogo", vidaInicial);
        this.bonusAtaque = bonus;
    }

    // metodo
    atacar(alvo){
        return `Pokemon: ${this.nome}\nVida atual: ${this.getVida()}\nBônus de ataque: ${this.bonusAtaque}\n--${this.nome} atacou ${alvo}--`;
    }
}

class PokemonAgua extends Pokemon{

    #curaBase = 0;

    constructor(nome, vidaInicial, curaBase){
        super(nome, "agua", vidaInicial);
        this.#curaBase = curaBase;
    }

    // metodo
    atacar(alvo){
        return `Pokemon: ${this.nome}\nVida atual: ${this.getVida()}\nCura base: ${this.#curaBase}\n--${this.nome} atacou ${alvo}--`;
    }
}

// MAIN

const fogo1 = new PokemonFogo("Delphox", 210, 55);
const agua1 = new PokemonAgua("Mudkip", 60, 10);

console.log(fogo1.atacar("Abra"));
console.log(agua1.atacar("Magmar"));
