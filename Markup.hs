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
