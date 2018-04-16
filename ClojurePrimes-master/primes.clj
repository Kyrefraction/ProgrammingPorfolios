;; prime numbers verification: if n == 1 it isn't prime, if n == 2, it ist prime.
;; if n is a multiple of any integer between 2 and root n isn't prime. else prime.
(defn root-1 [n]
    (inc (long (Math/sqrt n))))

(defn range-1 [n]
  (range 2 (root-1 n))) ;; return the range of 2 and root of n

(defn filter-1 [n] 
  (filter #(zero? (rem n %))
        (range-1 n)));; if the number is prime this will return nil, otherwise it will return the multiples of that number
      
(defn is-prime [n]
  (nil? (first (filter-1 n))))

(defn is-prime? [n]
  (if (< n 2) ;check if the number is 1 or 0 before proceeding to check if it is prime.
      false
      (is-prime n))) ;as this method returns 1 as a prime number

(defn prime-seq [from, to]
  (for [y (range from to) :when (is-prime? y)]
       y))

(defn doprimes [from, to]    
  (def seqf (take 10 (reverse (prime-seq from to))))
  (doseq [x seqf] (println x))
  (println (str "Total = " (reduce + seqf))))
