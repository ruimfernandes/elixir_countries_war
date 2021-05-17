defmodule ElixirCountriesWar.Country.Supervisor do
  use Supervisor
  alias ElixirCountriesWar.Country

  def start_link(_) do
    Supervisor.start_link(__MODULE__, :ok)
  end

  def init(:ok) do
    children = [
      worker(Country, [%{name: "Portugal", citizens: 0}])
    ]

    # {:ok, pid} = supervise(children, strategy: :one_for_one)

    # {:ok, pid} = Supervisor.start_link(children, strategy: :one_for_one)
    # IO.inspect "I'm a supervisor"
    # IO.inspect pid

    supervise(children, strategy: :one_for_one)
  end
end
