defmodule ElixirCountriesWar.Country.Supervisor do
  use Supervisor
  alias ElixirCountriesWar.Country

  def start_link(_) do
    Supervisor.start_link(__MODULE__, :ok)
  end

  @impl true
  def init(:ok) do
    children = [
      {Country, %{name: "Portugal", citizens: 0}}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
