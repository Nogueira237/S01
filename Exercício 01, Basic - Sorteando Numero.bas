10 LET sorteado = ROUND(rnd()*100)
20 LET entrada = 0
30 INPUT "Digite um numero entre 0 e 100: "; entrada
40 IF entrada = sorteado THEN GOTO 100 ELSE GOTO 20




100 PRINT "Voce acertou!"
110 END
