# metacharacters in regular expressions

# . == any characters´
# Search: 9.11 --> match: "post 9-11 rules", "I got carded at 9/11", "Time of Receipt: 9:11"


# | == combine two expressions and searches for either
# Search: flood | fire --> match: "firewire is like usb", "the floodgates opened"
# any flood | fire | earthquake | hurricane
# can be combined with regular expressions: ^[Gg]ood | [Bb]ad --> match: "good news", "the news is bad"
# may contain parentheses: ^([Gg]ood | [Bb]ad)

# ? == optional expression
# look for all possibles of George W. Bush --> [Gg]eorge( [Ww]\.)? [Bb]ush
# using . has to employ escape character to avoid metacharacteristic

# (.*) == repeat any number of times, even none
# match: "()", "(24, m, germany)", "(www)"
# Search: [0-9]+ (.*)[0-9]+ --> match: "2 or 3"

# {} == interval quantifiers -- specify amount of repitition
# Search: [Bb]ush( +[^ ]+ +){1,5} debate --> match: "Bush has historically won all major debates"
# m,n == at least m but no miore than n matches
# m == exactly m matches
# m, == at least m matches but no maximum

# \1 or \2 == repitition
# Search: +([a-zA-Z]+) + \1 + --> match: "so so", "night night"

# * == greedy operator
# Search: ^s(.*)s --> match: "sitting at starbucks"

# Regular expressions are used in many languages
# Composed of literals and metacharacters
# Text prcoessing via regular expressions are powerful to analyze text sources
# Typically used with grep, grepl, sub and gsub






