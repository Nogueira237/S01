using System;
using System.Collections.Generic;

public class MembroDaSociedade
{
    //Encapsulamento
    private string Nome { get; set; }
    private string Raca { get; set; }
    private string Func { get; set; }

    //Construtor
    public MembroDaSociedade(string Nome, string Raca, string Func)
    {
        this.Nome = Nome;
        this.Raca = Raca;
        this.Func = Func;
    }

    //Metodos
    public void Descrever()
    {
        Console.WriteLine("Nome: {0} \nRaça: {1} \nFunção: {2}\n", Nome, Raca, Func);
    }
}




public class Program
{
    public static void Main(string[] args)
    {
        MembroDaSociedade membro1 = new MembroDaSociedade("Aragorn", "Humano", "Guardião");
        MembroDaSociedade membro2 = new MembroDaSociedade("Legolas", "Elfo", "Arqueiro");

        membro1.Descrever();
        membro2.Descrever();

    }
}
