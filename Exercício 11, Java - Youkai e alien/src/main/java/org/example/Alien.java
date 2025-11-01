package org.example;

public class Alien extends Entidades{
    // Atributos
    private String planetaOrigem;

    // Construtor
    public Alien(String nome, String planetaOrigem, Poder poder){
        super(nome, planetaOrigem, poder);
    }

    // Metodo
    @Override
    public String obterCoordenadas(){
        return String.format("Nome do alien: %s\nLocalização: %s\nPoder: %s%n\n", nome, getLocalizacao() , getPoder());
    }
}
