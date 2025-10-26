// Interface
class IRastreavel{

    // metodo obrigatorio
    rastrearLocal(latitude, longitude){
        throw new Error(`${this.nome} deve implementar o método rastrearLocal`);
    }
}

class Hunter extends IRastreavel{
    #nome = 'nenhum';
    #idade = 0;
    #localizacao = 'nenhuma';

    constructor(nome, idade, local){
        super();
        this.#nome = nome;
        this.#idade = idade;
        this.#localizacao = local;
    }

    rastrearLocal(lat, long){
        return `--Rastreando local do hunter--\nLatitude: ${lat}\nLongitude: ${long}`;
    }

}

class Especialista extends Hunter{
    #habilidadeNen = 'nenhum';

    constructor(nome, idade, local, habilidade){
        super(nome, idade, local);
        this.#habilidadeNen = habilidade;
    }

    // metodo
    rastrearLocal(lat, long){
        return `--Rastreando local do especialista--\nLatitude: ${lat}\nLongitude: ${long}`;
    }

}    

class Manipulador extends Hunter{
    #alvoAtual = 'nenhum';

    constructor(nome, idade, local, alvo){
        super(nome, idade, local);
        this.#alvoAtual= alvo;
    }

    // metodo
    rastrearLocal(lat, long){
        return `--Rastreando alvo--\nLatitude: ${lat}\nLongitude: ${long}`;
    }
}

class Batalhao{
    #hunters = new Set();

    constructor(hunters){
        this.#hunters = hunters;
    }

    adicionarHunter(hunter){
        this.#hunters.add(hunter);
    }

    getNumHunters(){
        return this.#hunters.size;
    }

    iniciarRastreamento(lat, long){
        for(const i of this.#hunters){
            console.log(i.rastrearLocal(lat, long));
        }
    }
}

// MAIN

// hunters
const h1 = new Hunter("Gon", 12, "Floresta");
const h2 = new Especialista("Kurapika", 17, "Yorknew", "Correntes");
const h3 = new Manipulador("Hisoka", 28, "Heavens arena", "Gon");

const b1 = new Batalhao([h1, h2,h3]);

console.log(`Número de hunters no batalhão: ${b1.getNumHunters()}\n`); 
b1.iniciarRastreamento(60.55, 46.85); // rastreia os hunters no batalhao
