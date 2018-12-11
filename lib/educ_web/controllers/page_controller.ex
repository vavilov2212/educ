defmodule EducWeb.PageController do
  use EducWeb, :controller
  alias Educ.Accounts

  plug :check_auth when action in [:new, :create, :edit, :update, :delete]
  
  defp check_auth(conn, _args) do
    if user_id = get_session(conn, :current_user_id) do
    current_user = Accounts.get_user!(user_id)
  
    conn
      |> assign(:current_user, current_user)
    else
      conn
      |> put_flash(:error, "You need to be signed in to access that page.")
      |> redirect(to: Routes.page_path(conn, :index))
      |> halt()
    end
  end

  def index(conn, _params) do
    render(conn, "index.html")
  end

end
