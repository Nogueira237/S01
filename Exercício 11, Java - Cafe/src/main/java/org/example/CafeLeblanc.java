package org.example;

import java.util.ArrayList;

public class CafeLeblanc {
    // Atributo protegido
    protected Menu menu;

    // Construtor
    public CafeLeblanc(Menu menu) {
        this.menu = menu;
    }

    // Metodo
    public void receberPedido(Cafe cafe){
        System.out.printf("Novo pedido:\n%s\nR$%s%n\n", cafe.nome, cafe.getPrecoBase());
    }
}
