(defstruct item
  nome
  tipo
  preco
  forca-magica)
  
(defvar *itens*
  (list
    (make-item :nome "Machado" :tipo "Arma" :preco 120 :forca-magica 0)
    (make-item :nome "Pocao de mana" :tipo "Pocao" :preco 45 :forca-magica 75)
    (make-item :nome "Dispositivo dimensional" :tipo "Artefato" :preco 500 :forca-magica 190)
    ))
    
(defun adiciona-imposto (preco)
  (let ((imposto (* preco 0.15)))  ;; calcula o valor do imposto
    (+ preco imposto)))
    
(defun bonus-maldicao (forca-magica)
  (cond
    ((> forca-magica 80)
    (* forca-magica 1.5));
  (t
    forca-magica)));
    
(defun processa-venda (catalogo)
  (let* ((armas
          (remove-if-not
            (lambda (item)
              (string= (item-tipo item) "Arma"))
            catalogo))
         (armas-com-imposto
          (mapcar
            (lambda (item)
              (make-item
                :nome (item-nome item)
                :tipo (item-tipo item)
                :preco (adiciona-imposto (item-preco item))
                :forca-magica (item-forca-magica item)))
            armas))
         (resultado-final
          (mapcar
            (lambda (item)
              (list (item-nome item)
                    (item-tipo item)
                    (bonus-maldicao (item-forca-magica item))))
            armas-com-imposto)))
    resultado-final))


(format t "---Lista atual de armas---~%")
(format t "~a~%" (processa-venda *itens*)) ;; lista atual de armas

(format t "---Lista das armas sendo compradas---~%")
(format t "~a~%"              ;; lista das armas sendo compradas
  (processa-venda             
    (list
      (make-item :nome "Poção de Vida" :tipo "Pocao" :preco 20 :forca-magica 0)
      (make-item :nome "Pedra lunar" :tipo "Artefato" :preco 500 :forca-magica 200)
      (make-item :nome "Dark Repulser" :tipo "Arma" :preco 1000 :forca-magica 500)
      (make-item :nome "Elucidator" :tipo "Arma" :preco 3000 :forca-magica 650)
      )))
