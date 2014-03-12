{-
	These are the examples to be used in class
	This example checks if a phrase is a palindrome or not.
-}

import Data.Char


-- remove uppercases
removeUppercase st = [ x | x <- st, elem x ['a'..'z']]

-- remove punctuation and turn to lowercase
removePunct xs = [if elem x ",.?!" then ' ' else toLower x | x <- xs]

-- remove whitespaces
removeWS xs = filter (/=' ') xs

-- turn to lowercase
toLowercase x =  toLower
toLowercase' xs =  map toLower

-- check to see if a certain string is palindrome or not
isPalindrome xs = xs == reverse xs

checkPalindrome xs = map (isPalindrome . removeWS . removePunct) xs

printPalin p = print $ checkPalindrome $ p

main = do  
	print "Is 'A Toyota' a palindrome?"
	if (head (checkPalindrome ["A Toyota"]))
		then print ((show (map (removeWS . removePunct) ["A Toyota"]))++" It is a palindrome!!")
		else print ("It is NOT a palindrome!!")
