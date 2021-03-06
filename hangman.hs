import System.IO

diff :: String -> String -> String
diff xs ys = [if elem x ys then x else '-' | x<-xs]

guess :: String -> IO()
guess word = do 
	putStr "> " 
	xs <- getLine
	if xs == word 
		then putStrLn "Ding ding ding"
		else
			do putStrLn (diff word xs)
				guess word

getCh :: IO Char 
getCh = do 
	hSetEcho stdin False
	c <- getChar
	hSetEcho stdin True
	return c

-- echo every character as a dash!!
sgetLine :: IO String
sgetLine = do 
	x <- getCh
	if x == '\n' 
		then
			do 
				putChar x
				return []
		else
			do 
				putChar '-'
				xs <- sgetLine
				return (x:xs)

-- main loop
--hangman :: IO()
main = do 
	putStrLn "Give me a word: "
	word <- sgetLine
	putStrLn "Guess the word: "
	guess word

--main = hangman
