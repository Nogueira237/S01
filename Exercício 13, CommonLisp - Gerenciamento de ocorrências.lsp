(defstruct ocorrencia
  nome              ;; nome da missão
  ritual            ;; tipo
  nivel-medo        ;; nível de exposição paranormal
  agentes-enviados) 

(defvar *missoes*
  (list
   (make-ocorrencia :nome "Ocorrencia 1" :ritual "Invocacao" :nivel-medo 72 :agentes-enviados 2)
   (make-ocorrencia :nome "Ocorrencia 2" :ritual "Sangue" :nivel-medo 91 :agentes-enviados 5)
   (make-ocorrencia :nome "Ocorrencia 3" :ritual "Necromancia" :nivel-medo 65 :agentes-enviados 4)
   (make-ocorrencia :nome "Ocorrencia 4" :ritual "Mental" :nivel-medo 84 :agentes-enviados 1)
   (make-ocorrencia :nome "Ocorrencia 5" :ritual "Proibido" :nivel-medo 99 :agentes-enviados 7)))


;; retorna a soma total do campo nivelmedo de todas as ocorrências
(defun soma-medo-recursiva (lista-ocorrencias)
  (cond
    ((null lista-ocorrencias) 0)
    (t (+ (ocorrencia-nivel-medo (car lista-ocorrencias))
          (soma-medo-recursiva (cdr lista-ocorrencias))))))

;; calcula média e filtra ocorrencias criticas
(defun analise-final (lista-ocorrencias)
  (let* ((total-medo (soma-medo-recursiva lista-ocorrencias))
         (media-medo (/ total-medo (length lista-ocorrencias))))

    ;; filtragem de ocorrências críticas
    (let ((criticas
            (remove-if-not
             (lambda (ocorr)
               (and (> (ocorrencia-agentes-enviados ocorr) 3)
                    (> (ocorrencia-nivel-medo ocorr) media-medo)))
             lista-ocorrencias)))

      (mapcar #'ocorrencia-nome criticas))))
      
(format t "~a~%"(analise-final *missoes*))
