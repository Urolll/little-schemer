(define atom?
  (lambda (n)
    (and (not (pair? n)) (not (null? n)))))

(define rember*
  (lambda (a l)
    (cond
      ((null? l) (quote()))
      ((atom? (car l))
      (cond
        ((eq? (car l) a)
        (rember* a (cdr l)))
          (else (cons (car l) (rember* a (cdr l))))))
      (else (cons (rember* a (car l)) (rember* a (cdr l)))))))

(rember* 'cat '((cat kitten)(i (love) cat) (wow (cat (cat (kitten (cat) cat) is epic)) cat) cat))
(rember*
  'meow
  '((meows) meow ((meows) meow) (meow meow ((meows))) meows (meow meow)))
