module ApplicationHelper
  def render_nav_links
    if user_signed_in?
      content_tag("ul", class: "right") do
        content_tag("li") do
          link_to("Games", games_path)
        end +
        content_tag("li") do
          link_to("Categories", categories_path)
        end +
        content_tag("li") do
          link_to("Reviews", "#")
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
