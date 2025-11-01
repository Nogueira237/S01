package org.example;

public class Entidades implements IRastreavel {
    // Atributos
    public String nome;
    private String localizacao;
    private Poder poder;

    // Construtor
    public Entidades(String nome, String localizacao, Poder poder){
        this.nome = nome;
        this.localizacao = localizacao;
        this.poder = poder;
    }

    // Metodo
    @Override
    public String obterCoordenadas() {
        return String.format("Nome: %s\nLocalização: %s%n\n", nome, localizacao);
    }

    // Getter
    public String getLocalizacao(){
        return localizacao;
    }
    public Poder getPoder(){
        return poder;
    }
}
