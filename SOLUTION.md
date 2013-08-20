# Some explanations about the algorithm used in my solution

The core of the algorithm is to create groups of stone, and update
the list of freedoms for each group. At the end, only the freedoms
from groups with a single freedom are printed, after having been sorted
and deduplicated.

The algorithm uses `@b` for the board, and abuses the fact that it's a
9x9 board. So the coordinates are in the range `00..99` and `$x.$y` can
point to any intersection. When constructing the board, the column
and row 0 are filled with nothing (either `undef` or `''`).

The board is visited in a single pass, line by line (thanks to `-ln`).
For each cell, I looked at the cell above and the one on its left.

If the current cell is a `w`, it's turned into the next available
number, and for each neighbour, if it's a number, then both are turned
into the smallest of the two numbers, and their lists of freedoms are
merged. Neighbours that are ' ' are added to the list of freedoms for
the current cell.

If the current cell is a ` `, it's added as a freedom to those of its
neighbours that are numbers.

For `b` cells, we do nothing.

The numbers are the 'equivalence classes' for the white groups, i.e.
two cells having the same number are part of the same group.

Printing the board was very useful to debug my algorithm:

    ...wb....          ...1b....
    ...b.....          ...b.....
    .........          .........
    ..b......  would   ..b......
    .bwb.....  become  .b2b.....
    bwwwb....          b222b....
    .........          .........
    .........          .........
    .......bw          .......b6

Without any merging of cells, the '2' group would actually be:

      2
     345

During the pass, it evolves like this:


    ..b......
    .b2

(visiting all cells until the next white)

    ..b......
    .b2......
    b3


    ..b......
    .b2b.....
    b34

merging the current cell (4) with 2:

    ..b......
    .b2b.....
    b32

merging the current cell (2) with 3:

    ..b......
    .b2b.....
    b22

    ..b......
    .b2b.....
    b225

merging the current cell (5) with 2:

    ..b......
    .b2b.....
    b222

The sub `M` does the addition of the freedoms, removing duplicates.
The sub `S` does the merging of the equivalence classes, and calls
M to merge their freedoms.

At 400, I had no expectation of winning. A well-known fact of golf
competitions is that regexp-based algorithms always win. `:-)`

