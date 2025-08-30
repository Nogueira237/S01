use std::io;

fn imprimir_tabuada(numero: i32, limite_inferior: i32, limite_superior: i32){

  for i in limite_inferior..=limite_superior{
    let res = numero * i;
    println!("{}", res);
  }
}

fn main(){

  println!("Numero da tabuada: ");
  let mut n = String::new();
  io::stdin()
    .read_line(&mut n)
    .expect("Falha ao ler");

  let numero: i32 = n
    .trim()
    .parse()
    .expect("Digite um numero valido");

  println!("Limite inferior: ");
    let mut li = String::new();
    io::stdin()
      .read_line(&mut li)
      .expect("Falha ao ler");

    let limite_inferior: i32 = li
      .trim()
      .parse()
      .expect("Digite um numero valido");
  
  println!("Limite inferior: ");
    let mut ls = String::new();
    io::stdin()
      .read_line(&mut ls)
      .expect("Falha ao ler");

    let limite_superior: i32 = ls
      .trim()
      .parse()
      .expect("Digite um numero valido");

  imprimir_tabuada(numero, limite_inferior, limite_superior);
  
}
