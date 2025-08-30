use std::io;

fn main() {
    loop {
        println!("Digite sua senha: ");
        let mut senha = String::new();
        io::stdin()
            .read_line(&mut senha)
            .expect("Falha ao ler senha");

        let senha = senha.trim();    // remover enter

        if senha.len() >= 8 {
            if senha.chars().any(|c| c.is_digit(10)) {                
                if senha.chars().any(|c| c.is_ascii_uppercase()) {
                    println!("Senha valida");
                    break;
                }
            }
        }
    }
}
