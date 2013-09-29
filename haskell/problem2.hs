--Of course this solution is mind bloggling.
--The key thing here is how fibs is defined. 
--see this link for an explaination

prob2 = sum [x | x <- takeWhile (<=4000000) fibs, even x] 
        where 
            fibs = 1:1:zipWith (+) fibs (tail fibs)  

main = print(prob2)
