use std::io;

fn eh_par(numero: i32) -> bool {
  if numero%2 == 0{
    true
  }
  else{
    false
  }
}

fn main(){

  println!("== Jogador 1 ==");
  println!("Escolha par ou impar");
  let mut j1 = String::new();
  io::stdin()
    .read_line(&mut j1)
    .expect("Falha ao ler");
  let j1 = j1.trim();
  println!("Escolha um numero");
  let mut n1p = String::new();
  io::stdin()
    .read_line(&mut n1p)
    .expect("Falha ao ler");
  let n1: i32 = n1p
    .trim()
    .parse()
    .expect("Digite um numero valido");

  println!("== Jogador 2 ==");
  println!("Escolha um numero");
  let mut n2p = String::new();
  io::stdin()
    .read_line(&mut n2p)
    .expect("Falha ao ler");
  let n2: i32 = n2p
    .trim()
    .parse()
    .expect("Digite um numero valido");

  let numero = n1+n2;
  
  if j1 == "par" && eh_par(numero)== true{
    println!("A soma dos numeros é {} e o jogador 1 ganhou", numero)
  }
  else if j1 == "impar" && eh_par(numero)== false{
    println!("A soma dos numeros é {} e o jogador 1 ganhou", numero)
  }
  else {
    println!("A soma dos numeros é {} e o jogador 2 ganhou", numero)
}
  
  
}
