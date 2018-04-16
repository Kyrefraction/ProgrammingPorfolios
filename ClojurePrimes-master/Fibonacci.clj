(defn fibo-n [n]
  (if (= n 0) 0
    (if (= n 1) 1
      (+ (fibo-n (- n 1)) (fibo-n (- n 2)))
    )
  )
)

(defn fibo-seq1 [n]
  (for [x (range n)] (fibo-n x))
)

; the recursive nature of the fibo-n method causes a stack overflow error if n is too large, don't use these 2 methods

(defn f1 [[x y]] [y (+ x y)]) ;generate 2 elements of fibonacci specified as x and y 
;(take 5 (iterate (fn [[x y]] [y (+ x y)]) [0 1])) lazy evaluation allows this 

(def fib-s (map first (iterate (fn [[x y]] [y (+ x y)]) [0N 1N]))) ;0N and 1N to specify big numbers, otherwise error if n is too large

(defn fibo-seq2 [n]
  (take n fib-s)
)

(defn fibo-seq3 [from to]
  (drop from (take to fib-s))
)

(defn dofibo [from to]
  (def seqf (take 10 (reverse (fibo-seq3 from to))))
  (doseq [x seqf] (println x))
  (println (str "Total = " (reduce + seqf)))
)