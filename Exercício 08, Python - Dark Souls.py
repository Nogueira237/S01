from abc import ABC, abstractmethod

class Personagem(ABC):
    # definindo os atributos
    def __init__(self, vida: int, resistencia: int):
        self._vida = vida
        self._resistencia = resistencia

    # getters e setters controlados para a vida
    def get_vida(self):
        return self._vida
    
    def set_vida(self, nova_vida):
        if nova_vida > 0:
            self._vida = nova_vida
        else:
            print("A vida deve ser positiva")

    # metodos
   
    def __str__(self):
        return (f"O Personagem tem |{self._vida}| pontos de vida e |{self._resistencia}| pontos de resistencia")
        

# classe filha que herda personagem
class Cavaleiro(Personagem):
    # atributo armadura pesada
    def __init__(self,armadura_pesada : bool, vida: int, resistencia: int):
        self.armadura_pesada = armadura_pesada
        self._vida = vida
        self._resistencia = resistencia
    
    # override no metodo
    def __str__(self):
        return (f"O calaveiro tem |{self._vida}| pontos de vida e |{self._resistencia}| pontos de resistencia")

# MAIN

personagem1 = Personagem(40,0)
print(personagem1)

cavaleiro1 = Cavaleiro(True,100,50)
print(cavaleiro1)



        
