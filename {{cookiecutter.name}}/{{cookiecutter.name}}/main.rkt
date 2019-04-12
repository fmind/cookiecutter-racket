#lang racket/base

(require racket/contract)

(provide
 (contract-out
  [echo (-> string? string?)]))

(define (echo input)
  input)

(module+ test
  (require rackunit)
  (test-equal? "can echo input"
               (echo "hello world")
               "hello world"))

(module+ main
  (require racket/cmdline)
  (require racket/sequence)
  (command-line
    #:args (file)
    (define input (if (equal? file "-")
                      (current-input-port)
                      (open-input-file file)))
    (for [(line (sequence-map echo (in-lines input)))]
      (display line)
      (newline))))
