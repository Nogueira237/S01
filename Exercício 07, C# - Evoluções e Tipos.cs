using System;
using System.Collections.Generic;


//Classe base
public class Pokemon
{
    //Encapsulamento
    public string Nome { get; set; }

    //Construtor
    public Pokemon(string Nome)
    {
        this.Nome = Nome;
    }

    //Metodos
    public virtual void Atacar()
    {
        Console.WriteLine("Atacou");
    }
}

//Classes filhas
public class PokemonDeFogo : Pokemon
{
    // Construtor
    public PokemonDeFogo(string Nome) : base(Nome){}

    //metodos
    public override void Atacar(){
        Console.WriteLine($"{Nome} usou lança-chamas");
    }
}

public class PokemonDeAgua : Pokemon
{
    // Construtor
    public PokemonDeAgua(string Nome) : base(Nome){}

    //metodos
    public override void Atacar(){
        Console.WriteLine($"{Nome} usou jato de água");
    }
}


public class Program
{
    public static void Main(string[] args)
    {
        List<Pokemon> pokemons = new List<Pokemon>();

        pokemons.Add(new PokemonDeFogo("Charizard"));
        pokemons.Add(new PokemonDeAgua("Blastoise"));

        foreach(Pokemon it in pokemons){
            it.Atacar();
        }
    }
}
