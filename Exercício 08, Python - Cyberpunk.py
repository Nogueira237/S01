from  abc import ABC, abstractmethod

# interface base
class Cibernetico(ABC):

    @abstractmethod
    def realizar_hack(self):
        pass

class Implante:

    def __init__(self, custo: int, funcao: str):
        self.custo = custo
        self.funcao = funcao

class NetRunner(Cibernetico):

    def __init__(self, implante: Implante):
        self.implante = implante

    # override no metodo
    def realizar_hack(self):
        print(f"Custo do hack: {self.implante.custo} | funcao do personagem: {self.implante.funcao}")

class Faccao:

    def __init__(self,membros: list[Cibernetico]):
        self.membros = membros

# MAIN

membros = [
    NetRunner(Implante(50,"quebrar")),
    NetRunner(Implante(70,"decifrar")),
    NetRunner(Implante(100,"remontar"))
]

faccao = Faccao(membros)

for it in faccao.membros:
    it.realizar_hack()
