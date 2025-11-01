package org.example;

import java.util.HashMap;

public class Batalha {
    // Atributo
    private HashMap<String, Boss> arena;

    // Construtor
    public Batalha(){
        this.arena = new HashMap<>();
    }

    // Metodo para adicionar Boss
    public void adicionarBoss(Boss boss){
        arena.put(boss.getIdBoss(), boss);
        System.out.println("Boss " + boss.nome + " adicionado à arena.");
    }

    // Metodo para iniciar a batalha
    public void iniciarBatalha(String idBoss){
        Boss boss = arena.get(idBoss);
        if (boss != null) {
            boss.iniciarFase();
        } else {
            System.out.println("Boss com ID '" + idBoss + "' não encontrado");
        }
    }
}
