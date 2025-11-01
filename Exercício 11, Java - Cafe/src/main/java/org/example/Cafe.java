package org.example;

public class Cafe {
    // Atributos
    public String nome;
    public double precoBase;

    // Contrutor
    public Cafe(String nome, double precoBase){
        this.nome = nome;
        this.precoBase = precoBase;
    }

    // Metodo
    public double calcularPrecoFinal(){
        return precoBase;
    };
    
    // Getter
    public double getPrecoBase(){
        return precoBase;
    }

}
