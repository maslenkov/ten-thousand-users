defmodule TenThousandUsers.PageController do
  use TenThousandUsers.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
