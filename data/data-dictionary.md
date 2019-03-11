#columns
__team_name__: character, name of the team the player belongs to.

__game_date__: character, date of the game YY/MM/DD.

__season__: integer, season(year) of the game.

__period__: integer, an NBA game is divided in 4 periods of 12 mins each. For example, a value for period = 1 refers to the first period (the first 12 mins of the game).

__minutes_remaining__: integer, the amount of time in minutes that remained to be played in a given period.

__seconds_remaining__: integer, the amount of time in seconds that remained to be played in a given period.

__shot_made_flag__: factor, whether a shot was made (y) or missed (n).

__action_type__: character, the basketball moves used by players, either to pass by defenders to gain access to the basket, or to get a clean pass to a teammate to score a two pointer or three pointer.

__shot_type__: character, whether a shot is a 2-point field goal, or a 3-point field goal.

__shot_distance__: integer, distance to the basket (measured in feet).

__opponent__: character, the opponent team played against.

__x__: integer, the court x coordinate (measured in inches) where a shot occurred.

__y__: integer, the court y coordinate (measured in inches) where a shot occurred.
