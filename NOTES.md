### User
  -email
  -username
  -password_digest
  -login with google
  -has_many: game_reviews
  -has_many: games through: user_reviews

### Game
  -title
  -description
  -number_of_players
  <!-- -image -->
  -has_many: game_reviews
  -has_many: users through: game_reviews
  -belongs_to: categorie

### Categorie
  -name
  -general description
  -has_many: games

### game_review
  -content
  -belongs_to: user
  -belongs_to: game


### fetures ###
- Home page
- search game to review
- if there is no game title that you want to review, you can add a game throuhg the review form
- save reviews/edit/delete as well
- search game based on categortie or select a categorie to a new game to save.
  -Roll and Move Games
  -Worker Placement Games
  -Co-Op games
  -Secret Identity Games