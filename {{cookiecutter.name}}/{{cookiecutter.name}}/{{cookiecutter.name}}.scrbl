#lang scribble/manual

@(require scribble/eval
          (for-label {{cookiecutter.name}}
                     racket/base))

@(define base-eval (make-base-eval
                   '(require {{cookiecutter.name}})))
 
@title{{ '{' }}{{cookiecutter.name}}{{ '}' }}
 
@defmodule[{{cookiecutter.name}}]

@defproc[(echo [input string?])
         string?]{

Return @racket[input].

@examples[
  #:eval base-eval
  (echo "hello world")
]}
