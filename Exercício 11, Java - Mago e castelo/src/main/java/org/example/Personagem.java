package org.example;

import java.util.ArrayList;

public class Personagem {
    // Atributos privados
    private String nome;
    private int idade;

    // Construtor
    public Personagem(String nome, int idade){
        this.nome = nome;
        this.idade = idade;
    }

    // Metodo setter
    public void setNome(String nome){
        this.nome = nome;
    }

    // Getter para nome
    public String getNome(){
        return nome;
    }

}
