My solution to the atari golf contest held during YAPC Europe 2013
http://contest.reg.ru/

Perl Golf from REG.RU

= Legend

You are a son of an honorable Japanese nobleman of the Edo period. You
have always dreamed of becoming a programmer, but family traditions
were too strong: you were made apprentice of a Go master. After a brief
theoretical introduction, the master started giving you stone capturing
problems.

The tasks are easy, but it is obvious that you have absolutely no talent
for Go. Furthermore, the master whacks you with a bamboo stick for each
problem you fail to solve, and makes you eat your supper using only one
chopstick. You are sick and tired of endless beating and starvation,
and you decide to write a program that will solve problems for you. And
since paper is rather expensive in the Edo period, the program has to
be as short as possible.


= Go game basics

Go is a very ancient strategic table game which appeared in China several
thousands of years ago and reached its golden age in Japan. The game is
played by two players who alternately place black and white stones on
board grid intersections. A stone (or a group of stones) is "captured" and
taken off the board if it gets surrounded on all sides by the opponent's
stones. For example, in the following diagrams the white stones ("w")
or groups of stones will be removed from the board if the Black ("b")
put a stone into the "х" point:

                 . . b . .
    . x w b .    . b w b .    . . x
    . . b . .    . b w b .    . b w
    .........    . . x . .


= Specifications:

1. Problems are given for a training board with the size of 9×9.
2. Black moves first.
3. There are no stones already captured on the board.

**Input:** nine lines which represent the playing board are sent to STDIN.

Lines consist of spaces (for vacant points on the board), "w" symbols
(for white stones) and "b" symbols (black stones) and end with the new
line symbol ("\n").

**Output:** сoordinates (column and row numbers separated with a space,
counted from one) of points, a move to which results in the capture of
white stones. Results must be sent to STDOUT, one point per line. Results
must contain all the possible moves on the board which would lead to the
capture of white stones. Points are to be output in the order of their
position on the board (left to right, top to bottom).

The contest is based on regular Perl Golf rules:
1. The winner is the shortest program which passes all the tests.
2. Shebang must look like #!perl or #!perl -flags. #!perl is not included in the symbol count, but the flags (including "-" symbols) are counted.
3. All remaining symbols, including spaces and new line symbols, are counted.
4. The program may not use other modules, invoke external programs or access external data sources.
5. The solution must work correctly in Perl version 5.18.0, without any output to STDERR.
Solutions will be accepted at contest@reg.ru up to 16:00, August 13.

The winner will be awarded at 16:30, August 13 at the REG.RU stand.
