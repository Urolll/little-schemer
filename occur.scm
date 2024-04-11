(define occur
  (lambda (a lat)
    (cond
      ((null? lat) 0)
      (else
        (cond 
          ((eq? (car lat) a)
          (+ 1 (occur a (cdr lat))))
        (else 
          (occur a (cdr lat))))))))

(occur 'cats '(dogs and cats and cats meow))
(occur 'cats '())
(occur 'meow '(meow meo mo mwoe meow meow))
