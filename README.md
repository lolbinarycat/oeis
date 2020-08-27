# The Oeis-haskell project
The eventual aim of this project is a haskell function that takes an oeis A-number and produces the corrosponding list.

Really it's just a good way to practice functional programming while actually making something unique (instead of writing something that's already been done 100's of times).

# Contributing
The main restriction to keep in mind is that this project aims to have as few dependancies as possible. If you think a dependancy is essential, open an issue about it.
## Adding a new sequence
Generally, it is a good idea to create a function under the name of your sequence (e.g.  `fibonacci`) and do the main implementation there.  These functions should generally either take an index and return the integer at that index in the sequence (see the `sigma` function), or for a recusive function that produces a list, a starting point or points (see the `fibonacci` function).

This list should then be added to the `oeis` function via pattern matching in a way that it producess a list of all the elements in the sequence (e.g. `oeis 203 = map sigma [1..]`).

This makes it easy to add variations on said sequence.

If you change meets these guidlines, just send a pull request.
## Improving (optimising) an existing sequence
You may also improve the implementation of an existing sequence.

If the improvement is a reduction in algorytmic complexity (big O), a note of the old and new complexity is appreciated (but not required).

Simply send a pull request with the improved function (and preferably an explination of what was improved).
