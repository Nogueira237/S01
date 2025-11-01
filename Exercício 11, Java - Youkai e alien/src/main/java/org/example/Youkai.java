package org.example;

public class Youkai extends Entidades{

    // Construtor
    public Youkai(String nome, String localizacao, Poder poder){
        super(nome, localizacao, poder);
    }

    // Metodo
    @Override
    public String obterCoordenadas(){
        return String.format("Nome do youkai: %s\nLocalização: %s\nPoder: %s%n\n", nome, getLocalizacao() , getPoder());
    }

}
