-- Tipo que representa uma banda
data Banda = Banda { nome :: String, gen :: String, cache :: Double }
    deriving (Show)
    
-- Possiveis status do evento
data StatusEvento = Ativo | Encerrado | Cancelado
    deriving (Show, Eq)
    
-- Tipo que representa um evento com lista de bandas e status do evento
data Evento = Evento { bandas :: [Banda], statusEvento :: StatusEvento}
    deriving (Show)
    
    
-- Soma todos os caches
calculaSubTotal :: [Banda] -> Double
calculaSubTotal listaDeBandas = sum (map cache listaDeBandas)

-- Função para calcular o custo total do evento
custoTotalEvento :: Evento -> Double
custoTotalEvento evento
    | statusEvento evento == Cancelado = 0.0
    | otherwise = total
    where
      sub = calculaSubTotal (bandas evento) -- soma dos cachês
      prod = 0.2*sub
      total = sub + prod

bandaAbertura :: Evento -> String
bandaAbertura evento =
    case bandas evento of
        []    -> "Nenhuma banda vai tocar"
        (x:_) -> nome x


-- Exemplos de bandas
banda1 = Banda "Nirvana" "Rock" 200
banda2 = Banda "Mobb Deep" "Rap" 500
banda3 = Banda "Babymetal" "Metal" 1000

-- Cria 3 eventos diferentes
evento1 = Evento [banda1, banda2] Ativo
evento2 = Evento [banda1, banda3] Encerrado
evento3 = Evento [banda2, banda3] Cancelado


main :: IO ()
main = do
    putStr "Evento 1 (Ativo) - Valor Total: R$" -- caches das bandas = 700    //    produção = 140
    print (custoTotalEvento evento1)
    
    putStr "Evento 2 (Encerrado) - Valor Total: R$" -- caches das bandas = 1200    //    produção = 240
    print (custoTotalEvento evento2)
    
    putStr "Evento 3 (Cancelado) - Valor Total: R$" -- evento cancelado = 0
    print (custoTotalEvento evento3)

    putStr "Banda de abertura do evento 1: "
    print (bandaAbertura evento1)
