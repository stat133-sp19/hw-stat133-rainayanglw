Workout 1
================
Raina Yang
3/11/2019

While the Golden State Warriors was clearly the best team in the NBA during 2015-2016 season, 2016 was't the best year for them. After the Cleveland Cavaliers' Game 6 victory, it felt like that the Warriors might have used up their talents. However, it is not breaking news that the Warriors can shoot. They often set the all-time record for effective field-goal percentage, making more than half their shots. This is a visual report on the shot data of the top Warriors players: Curry, Durant, Iguodala, Green, Thompson. It combines shot charts with summaries and visualizations to produce a straightforward view of each player's performance.

![](warriors.png) \# Data Analysis for Individual Players

Stephen Curry is the greatest shooter in NBA history. This is evident in his percentages. According to Nylon Calculus's breaking down of Curry's shots from 2011-2016, Curry averaged 1.36 points per shot from 0-3 feet (accounting for free throws). Even from 24-28 feet, Curry averaged 1.37 points per shot. From 28-30 feet, Curry averaged 1.35 points per shot. In comparison, the Golden State Warrior, having the top offense in the league, average 1.14 points per possession (accounting for turnovers and offensive rebounds). It's truly unbelievable that Curry is as efficient when pulling up from six feet beyond the arc as doing layups!

According to the 2016 data below, Curry led the rank for the 3 point field goals, but lagged behind for the overall field goals percentage with a mere 46.7 percent. He probably didn't show his best self in this season, lacking the extra burst that caused him to advance to the first unanimous MVP in league history.

Klay Thompson, on the other hand, has three All-Star appearances on his resume. He also owns one of the most single-season triples among all the players. He might not be the most versatile player around. But as we will see in the data below, he's achieving a 42.4 percent of his triples, a rate Curry didn't even reach in the season.

Andre Iguodala is a defensive player whose intentions wouldn't be so easy to decipher. It's hard to tell between his calculated pacing and slow start on the court. While he made far fewer shots than any four players, his 2 point field goal percentage is the highest at 63.8 percent. He's the one player that goes out there on the floor when the team needs to take control of a game.

Draymond Green, as can be seen through the data below, has the lowest shooting percentage for all categories among all 5 players. It causes some issue for the Warriors. When defenses force Green to shoot, he's been a little far from a satisfactory three-point shooter this season. However, he's the team's number one performer in rebounds and assist, being second in steals and blocks. He's a dominant player that is great at setting his teammates up. He's a superstar in his own way.

Kevin Durant has the highest overall shooting rate at 54.1 percent among all 5 players. His 2 point percentage at 60.7 percent is also one of the best, given that he shot more than triple times Iguodala's shooting attempts. He's a defensive menace as a 7-foot guard. While the stats say that Curry is Warriors' most important star, Durant has the most well-rounded talent.

Effective Shooting Percentage Data
==================================

2PT
---

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Andre Iguodala   210   134     0.638
    ## 2 Kevin Durant     643   390     0.607
    ## 3 Stephen Curry    563   304     0.540
    ## 4 Klay Thompson    640   329     0.514
    ## 5 Draymond Green   346   171     0.494

3PT
---

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Klay Thompson    580   246     0.424
    ## 2 Stephen Curry    687   280     0.408
    ## 3 Kevin Durant     272   105     0.386
    ## 4 Andre Iguodala   161    58     0.360
    ## 5 Draymond Green   232    74     0.319

Overall
-------

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <chr>          <int> <int>     <dbl>
    ## 1 Kevin Durant     915   495     0.541
    ## 2 Andre Iguodala   371   192     0.518
    ## 3 Klay Thompson   1220   575     0.471
    ## 4 Stephen Curry   1250   584     0.467
    ## 5 Draymond Green   578   245     0.424

Overall Shot Charts for 2016 Season
===================================

PNG image of the facetted shot charts
-------------------------------------

<img src="../images/gsw-shots-charts.png" width="80%" style="display: block; margin: auto;" />
