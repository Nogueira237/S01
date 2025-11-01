package org.example;

import java.util.ArrayList;

public class Castelo {
    // Atributos
    public String nome;
    private ArrayList<Divisao> divisoes;

    // Construtor
    public Castelo(String nome){
        this.nome = nome;
        this.divisoes = new ArrayList<>();
    }

    // Metodo
    public void adicionarDivisao(Divisao divisao){
        this.divisoes.add(divisao);
        System.out.printf("Divisão '%s' adicionada%n", divisao.getNome());
    }

    // Mostrar as divisoes

    public void listarDivisoes() {
        System.out.println("Divisões do castelo " + nome + ":");
        for (Divisao d : divisoes) {
            System.out.println("- " + d.getNome());
        }
    }

}
