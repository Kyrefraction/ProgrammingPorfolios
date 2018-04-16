--Vincenzo Scialpi 15072935
import Data.Char
import Data.List
import Data.Function


-- lowercase a string
toLowerStr xs = map toLower xs

-- drop non-letter characters but leave spaces to allow for separation into words
removeNonLetters xs = filter (\x -> isLower x || isSpace x) xs

-- count Letters
f1 w = (head w, length w)
countLetters xs = map f1 $ group $ sort xs

-- Histogram
toAsteriskBar x = show (fst x) ++ ": " ++ (replicate(snd x) '*') ++ "\n"
makeHistogram xs = concat $ map toAsteriskBar xs

-- toWordList
toWordList xs = words $ removeNonLetters $ toLowerStr xs

-- countCommonWords
countCommonWords strList = do
  let commonWords = ["the", "be", "to", "of", "and", "a", "in", "that", "have", "I", "it", "for", "not", "on", "with", "he", "as", "you", "do", "at"]
  length $ filter (\w -> elem w commonWords) strList

-- dropCommonWords
dropCommonWords strList = do
  let commonWords = ["the", "be", "to", "of", "and", "a", "in", "that", "have", "I", "it", "for", "not", "on", "with", "he", "as", "you", "do", "at"]
  filter (\w -> not(elem w commonWords)) strList

-- countWords
countWords xs = map f1 $ group $ sort xs

-- sortWords
sortWords wordTupleList = reverse $ sortBy (compare `on` snd) wordTupleList

main = do
  putStrLn "Introduce a filename:"
  fname <- getLine
  textdata <- readFile fname
  let wordlist = toWordList textdata
  putStrLn "Report:"
  putStrLn ("\t" ++ (show $ length wordlist) ++ " words")
  putStrLn ("\t" ++ (show $ countCommonWords wordlist) ++ " common words")
  putStrLn "\nHistogram of the most frequent words (excluding common words):"
  putStr $ makeHistogram $ sortWords $ countWords $ dropCommonWords $ wordlist
