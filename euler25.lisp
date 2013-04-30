(defun fib (x)
  (loop
       with a = 0 and b = 1 and temp = 0
       for i from 1 to x
       do (setf temp b b (+ a b) a temp )
       finally (return a)))


(defun number-to-list (num)
  (map 'list #'digit-char-p (prin1-to-string num)))

(defun number-of-digits (num)
  (length (number-to-list num)))

(defun result ()
    (loop
	 for i from 1 to 10000
	 for x = (number-of-digits (fib i))
	 when (= x 1000) return i))


(defun coin ()
  (let ((toss (random 101)))
    (cond
      ((< toss 50) 'tails)
      ((> toss 50) 'heads)
      (t 'edge))))

(defun throw-die ()
  (random 6))

(defun throw-dice ()
  (list (throw-die) (throw-die)))

(setf nerd-states '((sleeping eating)
		    (eating waiting-for-a-computer)
		    (waiting-for-a-computer programming)
		    (programming debugging)
		    (debugging sleeping)))

(defun nerdus (state)
  (second (assoc state nerd-states)))

(defun sleepless-nerd (state)
  (if (eql state 'debugging)
      'eating
      (nerdus state)))

(defun rem-last (list)
  (let* ((l (last list)))
    (remove l list)))

(setf x '(1 2 3 4 5))

(defun but-last (list)
  (cond
    ((null list) nil)
    ((null (rest list)) nil)
    (t  (cons (first list) (but-last (rest list))))))

(defun swap-first-last (list)
  (append (last list) (but-last (rest list)) (list (first list))))

(defun rotate-left (list)
  (append (rest list) (list (first list))))

(defun rotate-right (list)
  (append (last list) (but-last list)))


(setf member-table '((a b c d e)
		     (b c d e)
		     (c d e)
		     (d e)
		     (e e)))

(setf rooms
      '((living-room         (north front-stairs)
	                     (south dining-room)
	                     (east kitchen))
	(upstairs-bedroom    (west library)
	                     (south front-stairs))
	(dining-room         (north living-room)
	                     (east pantry)
	                     (west downstairs-bedroom))
	(kitchen             (west living-room)
	                     (south pantry))
	(pantry              (north kitchen)
	                     (west dining-room))
	(downstairs-bedroom  (north back-stairs)
	                     (east dining-room))
	(back-stairs         (south downstairs-bedroom)
	                     (north library))
	(front-stairs        (north upstairs-bedroom)
	                     (south living-room))
	(library             (east upstairs-bedroom)
	                     (south back-stairs))))

(defun choices (room)
  (rest (assoc room rooms)))

(defun look (direction room)
  (let ((c (choices room)))
    (loop for item in c
	  when (member direction item)
	  do (return (second item)))))

(setf *loc* nil)

(defun set-robbie-location (place)
  (setf *loc* place))

(defun how-many-choices ()
  (length (choices *loc*)))

(defun upstairsp (place)
  (or (eql place 'library) (eql place 'upstairs-bedroom)))

(defun onstairsp (place)
  (or (eql place 'front-stairs) (eql place 'back-stairs)))

(defun where ()
  (cond
    ((upstairsp *loc*) (list 'robbie 'is 'upstairs 'in 'the *loc*))
    ((onstairsp *loc*) (list 'robbie 'is 'on 'the *loc*))
    (t (list 'robbie 'is 'downstairs 'in 'the *loc*))))

(defun move (direction)
  (let ((newdir (look direction *loc*)))
    (if (null newdir)
	(list 'ouch 'robbie)
	(changedir newdir))))
      

(defun changedir (newdir)
  (progn
    (set-robbie-location newdir)
    (where)))
