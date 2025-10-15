from abc import ABC, abstractmethod

# classe base
class Heroi(ABC):

    # atributos
    def __init__(self, nome: str, funcao: str):
        self.nome = nome
        self.funcao = funcao

    # metodo usar ult
    @abstractmethod
    def usar_ultimate(self):
      pass
   
class Tanque(Heroi):
    def __init__(self, nome: str):
      self.nome = nome

    def usar_ultimate(self):
       return (f"{self.nome} usou a ultimate e está bloqueando todos os ataques!")

   
class Dano(Heroi):
    def __init__(self, nome: str):
      self.nome = nome

    def usar_ultimate(self):
       return (f"{self.nome} usou a ultimate e está atacando todos os inimigos!")
    

# MAIN
    # lista coms os herois tanques/danos
herois: list[Heroi] = [
    Tanque("Roadhog"),
    Tanque("Doomfist"),
    Dano("Ashe"),
    Dano("Sombra")
]

for it in herois:
    print(it.usar_ultimate()) 
   
