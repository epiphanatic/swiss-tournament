# swiss-tournament
Implementation of a Swiss-system tournament in Python / PSQL

# About the Swiss-System Tournament

_"First round pairing is by random draw. For example, with 16 players they would be matched into 8 random pairs for the first round. For now, assume all games have a winner, and there are no draws._

___After the first round__, there will be a group of 8 players with a score of 1 (win), and a group of 8 players with a score of 0 (loss). For the 2nd round, players in each scoring group will be paired against each other – 1’s versus 1’s and 0’s versus 0’s._

___After round 2__, there will be three scoring groups:
4 players who have won both games and have 2 points
8 players who have won a game and lost a game and have 1 point
4 players who have lost both games and have no points._

___Again, for round 3__, players are paired with players in their scoring group. After the third round, the typical scoring groups will be:
2 players who have won 3 games (3 points)
6 players with 2 wins (2 points)
6 players with 1 win (1 point)
2 players with no wins (0 points)_

___For the fourth (and in this case final) round__, the process repeats, and players are matched with others in their scoring group. Note that there are only 2 players who have won all of their games so far – they will be matched against each other for the "championship" game. After the final round, we’ll have something that looks like this:
1 player with 4 points – the winner!
4 players with 3 points – tied for second place
6 players with 2 points
4 players with 1 point
1 player with 0 points_

_The Swiss system produces a clear winner in just a few rounds, no-one is eliminated and almost everyone wins at least one game, but there are many ties to deal with._" 

[source](https://docs.google.com/document/d/16IgOm4XprTaKxAa8w02y028oBECOoB1EI1ReddADEeY/pub?embedded=true)

# Dependencies

You must have python installed in order to run the program

See instructions [here](https://classroom.udacity.com/nanodegrees/nd004/parts/0041345401/modules/356120945175460/lessons/990110642/concepts/36256587390923#) for Mac.

See instructions [here](https://classroom.udacity.com/nanodegrees/nd004/parts/0041345401/modules/356120945175460/lessons/990110642/concepts/36691786570923#) for Windows.


# Starting the app on your local machine

1) Clone this repository or download the zip file.

2) In a command line, go to the project directory on your computer (wherever your cloned it to, or extracted the zip file) and type:
```
python tournament_test.py 
```

This will launch the application and the results of the test
will be printed to the console.