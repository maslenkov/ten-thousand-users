defmodule TenThousandUsers.UserView do
  use TenThousandUsers.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, TenThousandUsers.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, TenThousandUsers.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      email: user.email,
      username: user.username}
  end
end
