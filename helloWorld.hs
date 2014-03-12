--intro
--main = putStrLn "Hello world, I am learning Haskell!"

main = do
	putStrLn "Hello, what's your name?"
	name <- getLine
	putStrLn ("Hi " ++ name ++ ", you are learning Haskell!")
