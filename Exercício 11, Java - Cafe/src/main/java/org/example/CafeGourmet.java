package org.example;

public class CafeGourmet extends Cafe{
    // Atributo
    public double bonusAroma;

    // Construtor
    public CafeGourmet(String nome, double preco, double bonusAroma){
        super(nome, preco);
        this.bonusAroma = bonusAroma;
    }

    // Metodo
    @Override
    public double calcularPrecoFinal(){
        return precoBase + bonusAroma;
    }

}
