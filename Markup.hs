module Markup
    ( Document
    , Structure(..)
    ) where

import GHC.Natural

type Document = [Structure]

data Structure
    = Heading Natural String
    | Paragraph String
    | UnorderedList [String]
    | OrderedList [String]
    | CodeBlock [String]
    deriving Show

trim :: String -> String
trim = unwords . words

parse :: String -> Document
parse = parseLines [] . lines

parseLines :: [String] -> [String] -> Document
parseLines currentParagraph txts =
    let
        paragraph = Paragraph (unlines (reverse currentParagraph))
    in
        case txts of
            [] -> [paragraph]
            currentLine : rest ->
                if trim currentLine == ""
                then paragraph : parseLines [] rest
                else parseLines (currentLine : currentParagraph) rest

main :: IO ()
main = print $ parse "This is a paragraph.\n\nThis is another paragraph."
