package org.example;

import java.util.HashMap;

public class Registros {
    // Atributos
    public String nomeEquipe;
    protected HashMap<Entidades, String> avistamentos;

    // Construtor
    public Registros(String nomeEquipe){
        this.nomeEquipe = nomeEquipe;
        this.avistamentos = new HashMap<>();
    }

    // Metodo
    public boolean registrarAvistamento(Entidades entidade, String nome){
       avistamentos.put(entidade, nome);
        System.out.printf("%s registrado com sucesso!\n", nome);
        return true;
    }
}
