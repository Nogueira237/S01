package org.example;

public class PadraoAtaque {
    // Atributos
    public String nome;
    public int dano;

    // Construtor
    public PadraoAtaque(String nome, int dano) {
        this.nome = nome;
        this.dano = dano;
    }

    public String getNome() {
        return nome;
    }

    public int getDano() {
        return dano;
    }

    @Override
    public String toString() {
        return String.format("%s (Dano: %d)", nome, dano);
    }
}