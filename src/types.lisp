(in-package :cl-syntax)

(deftype syntax () 'readtable)

(deftype syntax-designator ()
  '(or syntax
       package-designator
       named-readtable-designator))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (trivial-types:type-expand '(trivial-types:proper-list syntax-designator)))
