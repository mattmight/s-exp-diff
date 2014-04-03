#lang racket

(define (port->list port)
  (let ([next (read port)])
    (if (eof-object? next)
        '()
        (cons next (port->list port)))))

(define (exists proc . lists)
 (match lists
  [`(() ...) 
   #f]

  [`((,hd ,tl ...) ...)
   (or (apply proc hd)
       (apply exists (cons proc tl)))]))

(define (differ? s1 s2)
  (or (not (= (length s1) (length s2)))
      (exists (lambda (x1 x2) (not (equal? x1 x2))) s1 s2)))


(define (diff-ports p1 p2)
  (define s1 (port->list p1))
  (define s2 (port->list p2))
  (differ? s1 s2))
 

(match (current-command-line-arguments)
  [(vector f1 f2) 
   (if (diff-ports (open-input-file f1) (open-input-file f2))
       (exit 1)
       (exit 0))]
  
  [else
   (error "insufficient arguments")])
