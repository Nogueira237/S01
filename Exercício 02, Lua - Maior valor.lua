local tabela = {}

local i = 1
tabela[i] = tonumber(io.read())

while tabela[i] ~= -1 do
  i = i + 1
  tabela[i] = tonumber(io.read())
end

local maior = tabela[1]

for j=2, i-1, 1 do
  if tabela[j] > maior then
    maior = tabela[j]
  end
end

print(maior)
