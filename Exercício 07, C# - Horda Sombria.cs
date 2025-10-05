using System;
using System.Collections.Generic;


//Classe base abstrata
public class MonstroSombrio
{
    public string Nome { get; set; }

    //construtor
    public MonstroSombrio(string Nome)
    {
        this.Nome = Nome;
    }

    //metodos
    public virtual void Mover()
    {
        Console.WriteLine("xd");
    }
}

public class Zumbi : MonstroSombrio
{
    //construtor
    public Zumbi(string Nome) : base(Nome) { }

    //metodos
    public override void Mover()
    {
        Console.WriteLine($"{Nome} é um zumbi e está indo lentamente atrás do seu cérebro!");
    }

}

public class Espectro : MonstroSombrio
{
    //construtor
    public Espectro(string Nome) : base(Nome){}

    //metodos
    public override void Mover() {
    Console.WriteLine($"{Nome} é um espectro e está voando rapidamente em sua direção!");
    }

}

public class Program
{
    public static void Main(string[] args)
    {
        MonstroSombrio[] monstros = new MonstroSombrio[4];

        monstros[0] = new Zumbi("Aikawa");
        monstros[1] = new Espectro("Carmilla");
        monstros[2] = new Zumbi("Sanka");
        monstros[3] = new Espectro("Yuuna");

        foreach (MonstroSombrio it in monstros)
        {
            it.Mover();
        }
    }
}
