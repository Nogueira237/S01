package org.example;

public class Poder {
    // Atributo
    public String nome;

    // Construtor
    Poder(String nome){
        this.nome = nome;
    }

    @Override
    public String toString(){
        return nome;
    }
}
