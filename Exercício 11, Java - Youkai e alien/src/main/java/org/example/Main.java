package org.example;

import java.util.HashMap;

public class Main {
    public static void main(String[] args){

        // Poderes
        Poder p1 = new Poder("Voar");
        Poder p2 = new Poder("Transformar");
        Poder p3 = new Poder("Invisibilidade");

        // Personagens
        Youkai youkai1 = new Youkai("youk", "Casa assombrada", p1);
        Alien alien1 = new Alien("bogosbinted", "Marte", p2);

        System.out.println(youkai1.obterCoordenadas());
        System.out.println(alien1.obterCoordenadas());

        // Registros
        Registros equipe1 = new Registros("equipe1");
        equipe1.registrarAvistamento(youkai1, "Youkai 1");
        equipe1.registrarAvistamento(alien1, "Alien 1");



    }
}
