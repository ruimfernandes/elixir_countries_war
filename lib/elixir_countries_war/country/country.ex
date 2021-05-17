defmodule ElixirCountriesWar.Country do
  use GenServer

  def start_link(state) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  ## Callbacks
  @impl true
  def init(country) do
    IO.inspect("Hello, I'm a country")
    IO.inspect(country)
    {:ok, country}
  end

  @impl true
  def handle_call(:remove_citizen, _from, %{citizens: citizens} = country) do
    {:reply, Map.put(country, :citizens, citizens - 1)}
  end

  @impl true
  def handle_cast({:add_citizen, _citizen}, %{citizens: citizens} = country) do
    {:noreply, Map.put(country, :citizens, citizens + 1)}
  end
end
