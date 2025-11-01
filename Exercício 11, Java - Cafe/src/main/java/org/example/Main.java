package org.example;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        // Normal
        Cafe c1 = new Cafe("Torrado", 5.00);
        Cafe c2 = new Cafe("Extra forte", 8.00);
        // Gourmet
        CafeGourmet auxc3 = new CafeGourmet("Arabico", 5.00, 10.00);
        Cafe c3 = new Cafe(auxc3.nome, auxc3.calcularPrecoFinal());

        ArrayList<Cafe> cafes = new ArrayList<>();
        cafes.add(c1);      // adicionando itens manualmente
        cafes.add(c3);

        Menu menu = new Menu(cafes);
        menu.adicionarItem(c2); // adicionando items pelo metodo na classe Menu

        // Recebendo pedidos
        CafeLeblanc loja = new CafeLeblanc(menu);
        loja.receberPedido(c1);
        loja.receberPedido(c2);
        loja.receberPedido(c3);

    }
}
