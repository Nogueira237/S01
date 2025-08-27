print ("Inicio do intervalo: ")
local M = tonumber(io.read())

print ("Fim do intervalo: ")
local N = tonumber(io.read())

print("Digite o numero que deseja encontrar os multiplos: ")
local X = tonumber(io.read())

for i = M, N, 1 do
  if (X%i) == 0 then
    print(i)
  end
end
