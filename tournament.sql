-- Table definitions for the tournament project.
--

DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament;
CREATE TABLE players (
  id SERIAL PRIMARY KEY,
  name varchar(50) NOT NULL,
  dateCreated TIMESTAMP DEFAULT current_timestamp
);
CREATE TABLE matches (
  match_id SERIAL PRIMARY KEY,
  winner INTEGER REFERENCES players(id),
  loser INTEGER REFERENCES players(id)
);
CREATE VIEW standings AS
SELECT players.id, players.name,
  (SELECT COUNT(matches.winner)
   FROM matches
   WHERE players.id = matches.winner)
   AS wins,

  (SELECT COUNT(matches.match_id)
   FROM matches
   WHERE players.id = matches.winner
   OR players.id = matches.loser)
  AS matches
FROM players
ORDER BY wins, matches;
