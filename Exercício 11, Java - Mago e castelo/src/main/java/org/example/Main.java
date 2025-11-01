package org.example;

public class Main {
    public static void main(String[] args) {

        Personagem perso = new Personagem("Mav", 19);
        Mago mago = new Mago("Malzahar", 38, "Aperto Ínfero");

        Castelo windsor = new Castelo("Windsor");
        Divisao d1 = new Divisao("divisao1", windsor);
        Divisao d49 = new Divisao("divisao49", windsor);

        System.out.println(mago.lancarFeitico());
        windsor.listarDivisoes();
    }
}
