(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) (quote()))
      (else (cond
        ((eq? (car lat) old)
        (cons new (cons old (cdr lat))))
        (else
          (cons (car lat) (insertL new old (cdr lat)))))))))

(insertL 'c 'd '(a b d))
(insertL 'cats 'and '(I love and dogs))
