10 INPUT "Nota 1: "; n1
20 INPUT "Nota 2: "; n2
30 LET media = (VAL(n1)+VAL(n2))/2
40 IF media > 60 THEN GOTO 100
50 IF media < 30 THEN GOTO 120
60 INPUT "Nota 3: "; n3
70 IF (VAL(media)+VAL(n3))/2 > 50 THEN GOTO 140
80 GOTO 160
90  
100 PRINT "Aprovado direto"
110 GOTO 170
120 PRINT "Reprovado direto"
130 GOTO 170
140 PRINT "Aprovado pela NP3"
150 GOTO 170
160 PRINT "Reprovado na NP3"
170 END
