#!/usr/bin/env hy
;;; -*- coding: utf-8 -*-
;;; Copyright (c) 2014-2017, Philip Xu <pyx@xrefactor.com>
;;; License: BSD New, see LICENSE for details.

;;; lift and list monad reader macros example

(require [hymn.dsl [*]])

(defmain [&rest args]
  (print "Project Euler Problem 29 - lift and list monad example"
         "https://projecteuler.net/problem=29"
         "How many distinct terms are in the sequence generated by"
         "a to the power of b for 2 <= a <= 100 and 2 <= b <= 100?"
         (-> (#^pow #*(range 2 101) #*(range 2 101)) distinct list len)
         :sep "\n"))
