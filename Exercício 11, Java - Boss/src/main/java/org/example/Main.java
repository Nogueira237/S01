package org.example;

public class Main {
    public static void main(String[] args) {

        // Criando ataques padrão
        PadraoAtaque padrao1 = new PadraoAtaque("Soco", 20);
        PadraoAtaque padrao2 = new PadraoAtaque("Soco em sequência", 25);

        // Criando ataques especiais
        PadraoAtaque ataque1 = new PadraoAtaque("Raio", 50);
        PadraoAtaque ataque2 = new PadraoAtaque("Golpe Congelante", 40);
        PadraoAtaque ataque3 = new PadraoAtaque("Explosão", 60);

        // Criando bosses
        Boss boss1 = new Boss("Sion", "boss1", "Fogo", padrao1);
        boss1.adicionarAtaque(ataque1);
        boss1.adicionarAtaque(ataque2);

        BossMagico boss2 = new BossMagico("Xerath", "boss2", "Água", padrao2);
        boss2.adicionarAtaque(ataque3);

        // Criando batalha e adicionando bosses
        Batalha batalha = new Batalha();
        batalha.adicionarBoss(boss1);
        batalha.adicionarBoss(boss2);

        // Iniciando batalhas
        batalha.iniciarBatalha("boss1");
        batalha.iniciarBatalha("boss2");
        batalha.iniciarBatalha("boss3"); // boss nao existe
    }
}
