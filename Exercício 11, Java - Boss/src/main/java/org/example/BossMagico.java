package org.example;

public class BossMagico extends Boss{

    // Construtor
    public BossMagico(String nome, String id, String fracoContra, PadraoAtaque padraoAtaque){
        super(nome,id,fracoContra, padraoAtaque);
    };

    // Metodo
    @Override
    public void iniciarFase(){
        System.out.printf("Iniciando fase do Boss mágico %s%n", this.nome);
    }
}
