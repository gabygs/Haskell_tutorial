
fibonacci :: (Integral a) => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)


fibonacci' :: (Integral a) => a -> a
fibonacci' n
        | n == 0 = 0
        | n > 0 && n < 3 = 1
        | otherwise = fibonacci (n - 1) + fibonacci (n - 2)
