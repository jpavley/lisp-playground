;; morse.lisp
;; functions that encode and decode morse code
;; tested with CLISP 2.49
;; (c) 2015 by John Pavley
;; MIT License

;; -----------------
;; utility functions
;; -----------------

;; function to create a morse signal

(defun make-signal (name value)
	(list name value)
)

;; function to create a leaf on the tree

(defun make-leaf (letter signal)
	(list letter signal)
)

;; function to create a branch of the tree

(defun make-branch (leaf leaves)
	(list leaf leaves)
)

;; ----------------------
;; create all the signals
;; ----------------------

(defparameter *dot* (make-signal `dot 0))
(defparameter *dash* (make-signal `dash 1))

;; ---------------------
;; create all the leaves
;; ---------------------

(defparameter *e* (make-leaf #\e *dot*))
(defparameter *t* (make-leaf #\t *dash*))

(defparameter *i* (make-leaf #\i *dot*))
(defparameter *a* (make-leaf #\a *dash*))

(defparameter *n* (make-leaf #\n *dot*))
(defparameter *m* (make-leaf #\m *dash*))

;; -----------------------
;; create the trees
;; -----------------------

(defparameter *top-tree* (make-branch *e* (list *i* *a*)))
(defparameter *bottom-tree* (make-branch *t* (list *n* *m*)))

;; -----
;; tests
;; -----

(print "SIGNALS")
(print *dot*)
(print *dash*)

(print "LEAVES")
(print *e*)
(print *t*)
(print *i*)
(print *a*)
(print *n*)
(print *m*)

(print "TREES")

(print *top-tree*)
(print *bottom-tree*)







