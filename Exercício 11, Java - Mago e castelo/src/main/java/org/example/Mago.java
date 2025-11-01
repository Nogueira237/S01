package org.example;

import java.util.ArrayList;

public class Mago extends Personagem {
    // Atributo privado
    private String magia;

    // Construtor
    public Mago(String nome, int idade, String magia) {
        super(nome, idade);
        this.magia = magia;
    }

    // Metodo
    public String lancarFeitico() {
        return String.format("O mago %s lançou o feitiço %s", getNome(), magia);
    }

}


