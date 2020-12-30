(defun toss-coin ()
  (let ((side (random 2)))
    (if (= side 0)
        'heads
        'tails)))

(defun play ()
  (if (eq (toss-coin) 'heads)
      (format t "Heads~%")
      (format t "Tails~%")))

(play)
