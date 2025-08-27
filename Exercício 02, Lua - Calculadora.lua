function calculadora(n1,n2,op)
  local res
  if op == "+" then
    res = (n1 + n2)
    print (res)
  end

  if op == "-" then
    res = (n1 - n2)
    print (res)
  end

  if op == "*" then
    res = (n1 * n2)
    print (res)
  end

  if op == "/" then
    res = (n1 / n2)
    print (res)
  end

  if op ~= "+" and op ~= "-" and op ~= "*" and op ~= "/" then
    print("ERRO")
  end
end

print("Primeiro numero: ")
local n1 = tonumber(io.read())

print("Segundo numero: ")
local n2 = tonumber(io.read())

print("Operacao (+ , -, *, /)")
local op = io.read()


print(calculadora(n1,n2,op))
