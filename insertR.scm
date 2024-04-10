(define insertR
  (lambda (new old lat)
    (cond
      ((null? lat) (quote()))
      (else (cond
        ((eq? (car lat) old)
        (cons old (cons new (cdr lat))))
        (else
          (cons (car lat) (insertR new old (cdr lat)))))))))

(insertR 'd 'c '(a b c))
(insertR 'cats 'and '(I love dogs and))
