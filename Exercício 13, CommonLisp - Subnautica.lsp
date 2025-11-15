(defstruct criatura
  nome              ;; nome da criatura (string)
  ambiente          ;; ambiente que vive (string)
  periculosidade    ;; baixa|media|alta (string)
  vida-media)       ;; anos (inteiro)
  
(defvar *catalogo*
  (list
  (make-criatura :nome "Boomerangs" :ambiente "Safe Shallows" :periculosidade "Baixa" :vida-media 2)
  (make-criatura :nome "Reaper Leviathan" :ambiente "Crash Zone" :periculosidade "Alta" :vida-media 100)
  (make-criatura :nome "Warper" :ambiente "Deep" :periculosidade "Media" :vida-media 50)
  (make-criatura :nome "Jellyray" :ambiente "Deep" :periculosidade "Baixa" :vida-media 5)))

(defun filtra-por-perigo (catalogo perigo)
  ;; Print: mostrar catalogo
  (format t "[DEBUG] TODAS criaturas no catalogo: ~a~%"
          (mapcar #'criatura-nome catalogo))
  (format t "~%[DEBUG] Filtrando criaturas pela periculosidade '~a'...~%" perigo)
  

  (let ((criaturas-filtradas-por-perigo
          (remove-if
           (lambda (criatura)
             (string-equal (criatura-periculosidade criatura) perigo))
           catalogo)))

    ;; Print: apos filtro
    (format t "~%[DEBUG] Depois do filtro (~a): ~a~%"
            perigo
            (mapcar #'criatura-nome criaturas-filtradas-por-perigo))

    ;; retorna resultado
    criaturas-filtradas-por-perigo))


(defun relatorio-profundidade (catalogo)
  (let ((criaturas-deep
          (remove-if-not
           (lambda (criatura)
             (string-equal (criatura-ambiente criatura) "Deep"))
           catalogo)))
    (mapcar
     (lambda (criatura)
       (format nil "~a: Vive em ~a"
               (criatura-nome criatura)
               (criatura-ambiente criatura)))
     criaturas-deep)))
     
(format t "~%--- Filtro que remove a categoria baixa ---~%")
(filtra-por-perigo *catalogo* "Baixa")

(format t "~%--- Relatorio de criaturas Deep ---~%")
(dolist (linha (relatorio-profundidade *catalogo*))
  (format t "~a~%" linha))
