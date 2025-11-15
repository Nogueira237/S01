;; funcao pura calcula-dosagem
(defstruct paciente
  nome    ;; nome do paciente (String)
  peso-kg    ;; peso em kg       (numero)
  idade-anos  ;; em anos         (numero)
  nome-da-erva  ;; medicamento a ser usado
  preco-base)   ;; preco do medicamento
  
(defvar *pacientes*
  (list
  (make-paciente :nome "Paciente 1" :peso-kg 60 :idade-anos 14 :nome-da-erva "Lotus" :preco-base 10)
  (make-paciente :nome "Paciente 2" :peso-kg 18 :idade-anos 2 :nome-da-erva "Boldo" :preco-base 5)
  (make-paciente :nome "Paciente 3" :peso-kg 40 :idade-anos 8 :nome-da-erva "Ginseng" :preco-base 10)))

(defun calcula-dosagem (peso-kg idade-anos)
  (cond
    ((or (< idade-anos 5)
         (< peso-kg 20))
     10);
    ((and (<= 5 idade-anos 12)
          (>= peso-kg 20))
     25);
    (t
     50)));
     
(defun ajusta-preco (preco-base nome-da-erva)
  (cond
    ((string= nome-da-erva "Ginseng")
     (* preco-base 3.0))

    ((string= nome-da-erva "Lotus")
     (* preco-base 1.5))

    (t
     preco-base)))

(format t "~%--- Pacientes ---~%")
(dolist (p *pacientes*)
  (format t "~a - Peso: ~,2fkg | Idade: ~a | nome da erva: ~a | preco base da erva: ~,2f~%"
          (paciente-nome p) (paciente-peso-kg p) (paciente-idade-anos p) (paciente-nome-da-erva p) (paciente-preco-base p)))

(format t "~%--- Dosagem e preco ajustado ---~%")
(dolist (p *pacientes*)
  (let ((dose (calcula-dosagem (paciente-peso-kg p)
                               (paciente-idade-anos p)))
        (preco (ajusta-preco (paciente-preco-base p)
                              (paciente-nome-da-erva p))))
    (format t "~a Dose: ~a ml | Preco ajustado: ~,2f BRL~%"
            (paciente-nome p) dose preco)))
