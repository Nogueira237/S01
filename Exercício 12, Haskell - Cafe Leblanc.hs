-- tipo Bebida
data Bebida = Bebida { nome :: String, tipo :: String, preco :: Double }
  deriving (Show)
  
-- tipo com possiveis status do pedido
data StatusPedido = Aberto | Entregue | Cancelado
  deriving (Show, Eq)
  
-- tipo que representa o pedido
data Pedido = Pedido { bebidas :: [Bebida], statusPedido :: StatusPedido }
  deriving (Show)
  
  
-- Função principal para calcular o valor do pedido
valorTotalPedido :: Pedido -> Double
valorTotalPedido pedido
    | statusPedido pedido == Cancelado = 0.0 
    | otherwise                        = sum (map preco (bebidas pedido))


-- Função para mostrar a primeiras bebida do pedido
primeiraBebida :: Pedido -> String
primeiraBebida pedido =
    case bebidas pedido of
      []  -> "Nenhuma bebida no pedido!"
      (x:_) -> nome x



-- Exemplos de bebidas

bebida1 = Bebida "Café arábica" "Café" 5.0
bebida2 = Bebida "Chá verde" "Chá" 7.0
bebida3 = Bebida "Suco de laranja" "Suco" 10.0

-- Criando pedidos

compra1 = Pedido [bebida1, bebida2] Aberto
compra2 = Pedido [bebida1, bebida3] Entregue
compra3 = Pedido [bebida2, bebida3] Cancelado


main :: IO ()
main = do
    putStrLn "--Cafe Leblanc--"
    
    putStr "Pedido 1 - R$"
    print (valorTotalPedido compra1)
    
    putStr "Pedido 2 - R$"
    print (valorTotalPedido compra2)
    
    putStr "Pedido 3 (cancelado) - R$"
    print (valorTotalPedido compra3)
