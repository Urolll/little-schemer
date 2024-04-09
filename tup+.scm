(define tup+
    (lambda (tup1 tup2)
        (cond
            ((null? tup1) tup2)
            ((null? tup2) tup1)
            (else
                (cons(+ (car tup1) (car tup2))
                    (tup+ (cdr tup1) (cdr tup2)))))))

(tup+ '(1 2 4 6 2) '(7 2 1))
(tup+ '(0 5 2) '(12 5 2 5 6))
(tup+ '(1 2 3) '(3 2 1))

;(8 4 5 6 2)
;(12 10 4 5 6)
;(4 4 4)
