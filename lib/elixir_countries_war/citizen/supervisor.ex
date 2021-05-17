defmodule ElixirCountriesWar.Citizen.Supervisor do
  use Supervisor
  alias ElixirCountriesWar.Citizen

  def start_link(_) do
    Supervisor.start_link(__MODULE__, :ok)
  end

  @impl true
  def init(:ok) do
    children = [
      {Citizen, %{name: "Rui", strengh: 10}}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
