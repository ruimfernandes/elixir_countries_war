defmodule ElixirCountriesWar.Citizen do
  use GenServer

  def start_link(state) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  ## Callbacks
  @impl true
  def init(citizen) do
    IO.inspect("Hello, I'm a citizen")
    IO.inspect(citizen)
    {:ok, citizen}
  end

  @impl true
  def handle_call(:add_strengh, _from, %{strengh: strengh} = citizen) do
    {:reply, Map.put(citizen, :strengh, strengh + 1)}
  end
end
