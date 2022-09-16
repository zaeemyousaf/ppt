;;(draw-rectangle width height block-char h-padding v-spaces)
(defun draw-rectangle (width height &optional (block-char "*") (h-padding 1))
  (setq h-padding (- h-padding 1))
  (setq char-map "")
  (loop for i=1 to width do
        (setq char-map (format nil "~a~A" char-map block-char))
        (loop for space=1 to h-padding do (setq char-map (format nil "~a " char-map))))
  (setq char-map (format nil "~a~%" char-map))
       (loop for i=1 to (- height 2) do
             (setq char-map (format nil "~a~A" char-map block-char))
             (loop for j=1 to (- width 2) do
                   (setq char-map (format nil "~a " char-map))
                   (loop for space=1 to h-padding do (setq char-map (format nil "~a " char-map))))
             (loop for j=1 to (+ width (- h-padding 3)) do (setq char-map(format nil "~a " char-map)))
             (setq char-map (format nil "~a~A~%" char-map block-char)))             
       (loop for i=1 to width do
             (setq char-map (format nil "~a~A" char-map block-char))
             (loop for space=1 to h-padding do (setq char-map (format nil "~a " char-map))))
       char-map)
       
(princ (draw-rectangle 3 3 "*" 3))



