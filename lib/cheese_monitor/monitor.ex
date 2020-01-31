defmodule CheeseMonitor.Monitor do
  use GenServer
  alias CheeseMonitor.Reporter

  def start_link(args) do
    GenServer.start_link(__MODULE__, args, name: __MODULE__)
  end

  def init(state) do
    Reporter.send_start_event()
    schedule_next_iteration()
    {:ok, state}
  end

  def handle_info(:take_readings, state) do
    Reporter.send_rand_event()
    schedule_next_iteration()
    {:noreply, state}
  end

  defp schedule_next_iteration do
    Process.send_after(self(), :take_readings, 5_000)
  end
end
