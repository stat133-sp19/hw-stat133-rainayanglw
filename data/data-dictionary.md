#columns
+team_name: character, name of the team the player belongs to.
+game_date: character, date of the game YY/MM/DD.
+season: integer, season(year) of the game.
+period: integer, an NBA game is divided in 4 periods of 12 mins each. For example, a value for period = 1 refers to the first period (the first 12 mins of the game).
+minutes_remaining: integer, the amount of time in minutes that remained to be played in a given period.
+seconds_remaining: integer, the amount of time in seconds that remained to be played in a given period.
+shot_made_flag: character, whether a shot was made (y) or missed (n).
+action_type: character, the basketball moves used by players, either to pass by defenders to gain access to the basket, or to get a clean pass to a teammate to score a two pointer or three pointer.
+shot_type: character, whether a shot is a 2-point field goal, or a 3-point field goal.
+shot_distance: integer, distance to the basket (measured in feet).
+opponent: character, the opponent team played against.
+x: integer, the court x coordinate (measured in inches) where a shot occurred.
+y: integer, the court y coordinate (measured in inches) where a shot occurred.
