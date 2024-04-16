(define member?
  (lambda (x lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? (car lat) x)
        (member? x (cdr lat)))))))

(define set?
  (lambda (lat)
    (cond
      ((null? lat) #t)
      ((member? (car lat) (cdr lat)) #f)
      (else (set? (cdr lat))))))

(set? '(cats cat kitten meow))
(set? '(car kitten cat cat))
(set? '(meow x2 2 apple 7))
(set? '())
(set? '(0 1 2 0))
(set? '(0 1 2 3))
(set? '(a b s g d w g s))
