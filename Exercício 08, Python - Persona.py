from abc import ABC, abstractmethod

class ArmaCorpoACorpo:
    def __init__(self,nomearma):
        self.nomearma = nomearma

class PhantomThieves:
    def __init__(self,nome: str,arma: str):
        self.nome = nome
        self.arma = arma

class Joker:
    def __init__(self,nome: str, arma: ArmaCorpoACorpo, membros: list[PhantomThieves]):
        self.nome = nome
        self.arma = arma # composição
        self.membros = membros

    # metodo
    def mostrar_equipe(self):
        print(f"Lider: {self.nome} | Arma: {self.arma.nomearma}")
        for it in self.membros:
            print(f"Nome: {it.nome} | Arma: {it.arma}")
        
# MAIN

personagens: list[PhantomThieves] = [
    PhantomThieves("perso1", "adaga"),
    PhantomThieves("perso2", "espada"),
    PhantomThieves("perso3", "cajado")
]

joker1 = Joker("perso4", ArmaCorpoACorpo("arco"), personagens)
joker1.mostrar_equipe()
