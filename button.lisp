;; Load packages
(load "packages.lisp" :external-format :utf-8)

;; Go into the defined package
(in-package :cl-ltk)

;; Main function
(defun main ()
  (with-ltk ()
    (wm-title *tk* "Button Test")
    (bind *tk* "<Alt-q>"
	  (lambda (event)
	    (setq *exit-mainloop* t)))
    (let ((btn (make-instance 'button
			      :master nil
			      :text "Button"
			      :command (lambda ()
					 (format t "Button pressed!~%")
					 (setq *exit-mainloop* t)))))
      (pack btn))))

;; Execution
(main)
