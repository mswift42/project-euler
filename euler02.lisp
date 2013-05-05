(defun euler-2 ()
  (loop
       for a = 0 then b and b = 1 then (+ a b)
       while (< a 4000000)
       when (evenp a) sum a))
