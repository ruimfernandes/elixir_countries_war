defmodule ElixirCountriesWar.Repo do
  use Ecto.Repo,
    otp_app: :elixir_countries_war,
    adapter: Ecto.Adapters.Postgres
end
