package org.example;

import java.util.ArrayList;

public class Divisao {
    // Atributo
    public String nome;
    // Composição
    private Castelo castelo;

    // Construtor
    public Divisao(String nome, Castelo castelo){
        this.nome = nome;
        this.castelo = castelo;
        this.castelo.adicionarDivisao(this); // registra automaticamente no castelo
    }

    // Getter
    public String getNome(){
        return nome;
    }

}
