// Interface
class IExplorador{

    constructor(nome){
        this.nome = nome;
    }
    explorarTerritorio(){
        throw new Error(`${this.nome} deve implementar o método explorarTerritorio!`)
    }
}

// Implementa interface IExplorador
class Esquadrao extends IExplorador{

    constructor(lider,membrosIniciais = []){
        super(lider);
        this.lider =lider;
        this.membrosIniciais = membrosIniciais;
    }

    // metodo obrigatório
    explorarTerritorio(){
        return `${this.nome} está explorando o território`;
    }

    // metodos
    adicionarMembro(soldado){
        this.membrosIniciais.push(soldado);
    }

    relatarStatus(){
        const status = this.membrosIniciais.map(s => s.verificarEquipamento());
        return status;
    }

}

// Agrega em Esquadrao
class Soldado{
    #gear = 'nenhuma';

    constructor(nome, modeloGear){
        this.nome = nome;
        this.#gear = modeloGear;
    }

    explorarTerritorio(){
        return `${this.nome}, soldado, está explorando o território`;
    }

    verificarEquipamento(){
        return `${this.nome} está carregando um(a) ${this.#gear}`;
    }

}

// compoem Soldado
class ODM_gear{

    #gasRestante = 0;

    constructor(modelo, novogas){
        this.modelo = modelo;
        this.#gasRestante = novogas;
    }

    usarGas(){
        return this.#gasRestante;
    }

    getGas(){
        return this.#gasRestante;
    }


}

const gear1 = new ODM_gear("Modelo X", 90);
const gear2 = new ODM_gear("Modelo Y", 70);

const soldado1 = new Soldado("Armin", gear1.modelo);
const soldado2 = new Soldado("Mikasa", gear2.modelo);

membros = [soldado1,soldado2];

const esquadrao = new Esquadrao("Levi", membros);

console.log(esquadrao.explorarTerritorio());
console.log(esquadrao.relatarStatus());
