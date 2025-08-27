local tabela = {}

local i = 1
tabela[i] = tonumber(io.read())

while tabela[i] ~= -1 do
  i = i + 1
  tabela[i] = tonumber(io.read())
end

local pares = {}
local k = 1

for j=1, i, 1 do
  if tabela[j] % 2 == 0 then
    pares[k] = tabela[j]
    k = k + 1
  end
end

for j=1, k-1, 1 do
  print (pares[j])
end
