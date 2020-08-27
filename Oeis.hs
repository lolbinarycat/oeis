module Oeis
    ( fibonacci
    , tribonacci
    , triangular
    , sigma
    , antisigma
    , oeis  
    ) where

fibonacci a b = a:fibonacci b (a+b)
tribonacci a b c = a:tribonacci b c (a+b+c)

triangular n = sum' [1..n]

sigma n = sum' $ divisors n

divisors 1 = [1]
divisors n = [d | d <- [1..n], n `mod` d == 0]

antisigma n = triangular n - sigma n

sum' [x] = x
sum' (x:xs) = x + sum xs

toDigits :: Integral a => a -> a -> [a]
toDigits n b | n < b = n:[]
toDigits n b = (n `mod` b):(toDigits (quot n b) b)

only579 (5:ds) = only579 ds
only579 (7:ds) = only579 ds
only579 (9:ds) = only579 ds
only579 [] = True
only579 _ = False

-- | primes
oeis 40 = [ p | n <- [2..], let p = divisors n !! 1, p == n ]

oeis 45 = fibonacci 1 1
oeis 203 = map sigma [1..]
oeis 213 = tribonacci 1 1 1
oeis 217 = map triangular [1..]
oeis 24816 = map antisigma [1..]

-- | triangular number composed of digits {5,7,9}
oeis 119226 = [n | n <- oeis 217,only579 $ toDigits n 10 :: Bool]

    
oeis _ = []
