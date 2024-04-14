(define one?
  (lambda (x) (= x 1)))

(define rempick
  (lambda (n lat)
    (cond
    ((one? n) (cdr lat))
    (else (cons (car lat) (rempick (- n 1) (cdr lat)))))))

(rempick 2 '(meow into the cave))
(rempick 1 '(cats dogs))
