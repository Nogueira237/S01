-- Tipo que representa um serviço
data Servico = Servico { nome :: String, tipo :: String, precoBase :: Double }
    deriving (Show)

-- Possíveis status do atendimento
data StatusAtendimento = EmAndamento | Finalizado | Cancelado
    deriving (Show, Eq)

-- Tipo que representa um atendimento
data Atendimento = Atendimento { servicos :: [Servico], statusAtendimento :: StatusAtendimento }
    deriving (Show)

-- Adiciona um bônus de 25% se tiver mais de 3 serviços e desconto se passar de 500
bonusEspiritual :: [Servico] -> Double
bonusEspiritual listaDeServicos =
    let soma = sum (map precoBase listaDeServicos)
        comBonus
            | length listaDeServicos > 3 = soma * 1.25
            | otherwise                  = soma
        comDesconto
            | comBonus > 500 = comBonus * 0.90
            | otherwise      = comBonus
    in comDesconto

-- Função para calcular o valor final do atendimento
valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento atendimento
    | statusAtendimento atendimento == Cancelado = 0.0
    | otherwise = bonusEspiritual (servicos atendimento)

-- Função que retorna o nome e tipo do primeiro serviço
descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico at =
    case servicos at of
        []    -> "Nenhum serviço"
        (x:_) -> nome x ++ " (" ++ tipo x ++ ")"
        

-- Exemplos de serviços
s1 = Servico "Banho" "Banho" 120.0
s2 = Servico "Massagem" "Massagem" 90.0
s3 = Servico "Banquete" "Banquete" 80.0
        
-- Exemplos de atendimentos
atendimento1 = Atendimento [s1, s2] EmAndamento  
atendimento2 = Atendimento [s1, s3] Finalizado
atendimento3 = Atendimento [s2, s3] Cancelado


main :: IO ()
main = do

    putStr "Atendimento 1 - Valor Total: R$"
    print (valorFinalAtendimento atendimento1)

    putStr "Atendimento 2 - Valor Total: R$"
    print (valorFinalAtendimento atendimento2)

    putStr "Atendimento 3 - Valor Total: R$"
    print (valorFinalAtendimento atendimento3)

    putStr "Descrição primeiro serviço do atendimento 1: "
    print (descricaoPrimeiroServico atendimento1)
