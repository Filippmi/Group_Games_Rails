### User
  -email
  -username
  -password_digest
  -login with google
  -has_many: user_reviews
  -has_many: games through: user_reviews

### Game
  -title
  -description
  -number_of_players
  <!-- -image -->
  <!-- -belongs_to: categorie -->
  -has_many: user_reviews
  -has_many: users through: user_reviews

<!-- ### Categorie
  -title
  -general description
  -has_many: games -->

### User_review
  -content
  -belongs_to: user
  -belongs_to: game


### fetures
- Home page
- search game to review
- if there is no game title that you want to review, you can add a game throuhg the review form
- save reviews/edit/delete as well