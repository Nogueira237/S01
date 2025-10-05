using System;
using System.Collections.Generic;


//Classe base
public class Feitico
{
    public string NomeDoFeitico {get; set;}

    //construtor
    public Feitico(string NomeDoFeitico){
        this.NomeDoFeitico = NomeDoFeitico;
    }

} 

public class Grimorio
{
    public List<Feitico> feiticos{get; set;}

    //construtor
    public Grimorio(){
        this.feiticos = new List<Feitico>();
    }

    //metodos
    public void AdicionarFeitico(string m){
        feiticos.Add(new Feitico(m));

    }
    public void ListarFeiticos()
    {
        Console.WriteLine("Feitiços no grimório:");
        foreach (Feitico it in feiticos)
        {
            Console.WriteLine($"{it.NomeDoFeitico}");
        }
    }
}

public class Ferramenta
{
    public string NomeDaFerramenta{get; set;}

    //construtor
    public Ferramenta(string NomeDaFerramenta){
        this.NomeDaFerramenta = NomeDaFerramenta;
    }

}

public class Maga
{
    public string Nome{get; set;}

    public Grimorio GrimorioAssociado {get; set;}
    private List<Ferramenta> ferramentas{get; set;}

    //construtores

    public Maga(string Nome,List<Ferramenta> ferramentasiniciais){
        this.Nome = Nome;
        this.GrimorioAssociado = new Grimorio();
        ferramentas = ferramentasiniciais;
    }
    //metodos
    public void MostrarEquips(){

        Console.WriteLine("Ferramentas:");
        foreach(Ferramenta it in ferramentas){
            Console.WriteLine($"{it.NomeDaFerramenta}");;
        }
    }
    }




public class Program
{
    public static void Main(string[] args)
    {
        List<Ferramenta> ferr = new List<Ferramenta>{
            new Ferramenta("Cajado"),
            new Ferramenta("Escudo")
        };
    

        Maga Frieren = new Maga("Frieren",ferr);

        Frieren.GrimorioAssociado.AdicionarFeitico("Bola de Fogo");
        Frieren.GrimorioAssociado.AdicionarFeitico("Escudo Negro");

        Frieren.MostrarEquips();
        Console.WriteLine("----------");
        Frieren.GrimorioAssociado.ListarFeiticos();
    }
}
