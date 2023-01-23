import Prelude hiding (sortBy)

sortBy :: (a -> a -> Ordering) -> [a] -> [a]
sortBy _ [] = []
sortBy cmp (x:xs) = sortBy cmp [y | y <- xs, cmp y x == GT] ++ [x] ++ sortBy cmp [y | y <- xs, cmp y x /= GT]

distance (x, y) = sqrt (x ^ 2 + y ^ 2)

main = do
  let pairs = [(3, 4), (1, 1), (-3, -4), (5, 1), (18, 5)]
  let sortedPairs = sortBy (\x y -> compare (distance x) (distance y)) pairs
  let finallPairs = reverse sortedPairs
  print finallPairs