package org.example;

import java.util.LinkedHashMap;

public class Boss {
    // Atributos
    public String nome;
    private String idBoss;
    private String pontoFraco;
    private LinkedHashMap<String, PadraoAtaque> moveset;
    private PadraoAtaque padraoAtaque; // agregação

    // Construtor
    public Boss(String nome, String id, String fracoContra, PadraoAtaque padraoAtaque) {
        this.nome = nome;
        this.idBoss = id;
        this.pontoFraco = fracoContra;
        this.moveset = new LinkedHashMap<>();
        this.padraoAtaque = padraoAtaque;
    }

    // Metodos
    public void adicionarAtaque(PadraoAtaque ataque){
        moveset.put(ataque.getNome(), ataque);
    };

    public void iniciarFase(){
        System.out.printf("Iniciando fase do Boss %s%n", this.nome);
    }

    // Getter
    public PadraoAtaque getPadraoAtaque() {
        return padraoAtaque;
    }
    public String getIdBoss(){
        return idBoss;
    }

}
