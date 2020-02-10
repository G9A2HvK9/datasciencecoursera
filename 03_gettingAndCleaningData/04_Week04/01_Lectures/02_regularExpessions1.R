# Regular Expressions are a combination of literals and metacharacters
# Analogous to natural language, the literal text are the words while metacharacters are the grammar
# Regular expression have a rich set of metacharacters

# searching for literals matches exact words
# Search: "Obama" --> Match "... long ago Clinton was saying Obama..."

# metacharacters express white space, word boundaries, beginnings and ends of lines, alternatives

# ^ == start of a line
# Search: ^i think --> match: "i think so" // no match: "that's what i think"

# $ == end of a line
# Search: morning$ --> match: "that was this morning" // no match: "morning to ya!"

# [] == sets of characters accepted as alternatives
# Search: [[Bb]][[Uu]][[Ss]][[Hh]] --> match: "BUSH", "bush", "BuSh", "bushwalk", "bushy"

# combine any
# Search: ^[Ii] am --> match: "I am going", "i am going" // no match: "therefore I am"

# ranges
# Search: ^[0-9][a-zA-Z] --> match: "7th inning"

# exclude character classes with [^]
# Search: [^?.]$ --> match: "hello", "hello!" // no match: "hello?", "hello."




