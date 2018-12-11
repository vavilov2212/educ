defmodule Educ.Repo do
  use Ecto.Repo,
    otp_app: :educ,
    adapter: Ecto.Adapters.Postgres
end
