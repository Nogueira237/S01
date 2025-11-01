package org.example;

import java.util.ArrayList;

public class Menu {
    // Atributo
    private ArrayList<Cafe> itens;

    // Construtor
    public Menu(ArrayList<Cafe> itens) {
        this.itens = itens;
    }

    // Metodo
    public void adicionarItem(Cafe cafe){
        itens.add(cafe);
    }
}
