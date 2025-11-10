-- Tipo que representa um item
data Item = Item { nome :: String, categoria :: String, preco :: Double}
    deriving (Show, Eq)
    
-- Tipo que representa uma compra
data CompraZelda = CompraZelda { itensComprados :: [Item]}
    deriving (Show, Eq)
    
    
-- Função para calcular o preco total dos itens
calculaSubtotal :: [Item] -> Double
calculaSubtotal listadeItems = sum (map preco listadeItems)
    
-- Função para calcular o desconto
calculaDesconto :: [Item] -> Double
calculaDesconto lista =
    let subtotal = calculaSubtotal lista
    in if subtotal > 200
        then subtotal * 0.1
        else 0.0

-- Função para adicionar frete
adicionaFrete :: Double -> Double
adicionaFrete subtotal
      | subtotal > 200 = 0.0
      | otherwise      = 15.0


-- Função para calcular o preço total do pedido
valorFinal :: CompraZelda -> Double
valorFinal compra =
    let sub    = calculaSubtotal (itensComprados compra)
        desc   = calculaDesconto (itensComprados compra)
        frete  = adicionaFrete sub
    in sub - desc + frete




-- Exemplos de itens      
item1 = Item "Poção de Vida" "Poções" 120.0
item2 = Item "Flechas" "Armas" 90.0
item3 = Item "Escudo Hyliano" "Escudos" 250.0


-- Exemplos de compras
compra1 = CompraZelda [item1, item2] -- TOTAL: R$210 // DESCONTO: R$21 // FRETE: R$0 -> TOTAL: R$189
compra2 = CompraZelda [item3]        -- TOTAL: R$250 // DESCONTO: R$25 // FRETE: R$0 -> TOTAL: R$225
 
main :: IO ()
main = do
  
  putStr "Compra 1 - R$"
  print (valorFinal compra1)
  
  putStr "Compra 2 - R$"
  print (valorFinal compra2)
