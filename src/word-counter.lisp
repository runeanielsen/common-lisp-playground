(defun start ()
  (progn (princ "Type word: ")
         (let ((word (read-line)))
           (princ (concatenate 'string "Word count: "
                               (write-to-string (count-words word)))))))

(defun count-words (word)
  (length (split-str word " ")))

(defun split-str (string separator &optional (r nil))
  (let ((n (position separator
                     string
                     :from-end t
                     :test #'(lambda (x y)
                               (find y x :test #'string=)))))
    (if n
        (split-str-1 (subseq string 0 n) separator (cons (subseq string (1+ n)) r))
        (cons string r))))

(start)
