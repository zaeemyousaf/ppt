;; ;;(draw-triangle base height block-char h-padding v-spaces)
;; ;; right triangle
;; (defun draw-triangle (base height &optional (block-char "*") (h-padding 1))
;;   (setq h-padding (- h-padding 1))
;;   (setq char-map "")
;;   (loop for i=1 to base do
;;         (setq char-map (format nil "~a~A" char-map block-char))
;;         (loop for space=1 to h-padding do (setq char-map (format nil "~a " char-map))))
;;   (setq char-map (format nil "~a~%" char-map))
;;        (loop for i=1 to (- height 2) do
;;              (setq char-map (format nil "~a~A" char-map block-char))
;;              ;;(loop for j=1 to (- base 2) do
;;              (loop for j=1 to (+ i 1) do
;;                    (setq char-map (format nil "~a " char-map))
;;                    (loop for space=1 to h-padding do (setq char-map (format nil "~a " char-map))))
;;              (loop for j=1 to (+ base (- h-padding 3)) do (setq char-map(format nil "~a " char-map)))
;;              (setq char-map (format nil "~a~A~%" char-map block-char)))             
;;        (loop for i=1 to base do
;;              (setq char-map (format nil "~a~A" char-map block-char))
;;              (loop for space=1 to h-padding do (setq char-map (format nil "~a " char-map))))
;;        char-map)
       
;; (princ (draw-triangle 3 3 "*" 3))

(loop for x=1 to 10 do
      (print x))
