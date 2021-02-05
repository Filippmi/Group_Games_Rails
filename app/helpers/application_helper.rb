module ApplicationHelper
  def render_nav_links
    if user_signed_in?
      content_tag("ul", class: "right") do
        content_tag("li") do
          link_to("All Games", games_path)
        end +
        content_tag("li") do
          link_to("Add a game", new_game_path)
        end +
        content_tag("li") do
          link_to("All Reviews", game_reviews_path)
        end +
        content_tag("li") do
          link_to("#{current_user.username}", user_path(current_user))
        end +
        content_tag("li") do
          link_to("Logout", destroy_user_session_path, method: "DELETE")
        end
      end
    else
      content_tag("ul", class: "right") do
        content_tag("li") do
          link_to("Login", login_path)
        end +
        content_tag("li") do
          link_to("Signup", signup_path)
        end
      end
    end
  end
end
