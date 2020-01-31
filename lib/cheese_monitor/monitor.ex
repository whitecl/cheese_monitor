defmodule CheeseMonitor.Monitor do
  require Logger
  use GenServer

  def start_link(args) do
    GenServer.start_link(__MODULE__, args, name: __MODULE__)
  end

  def init(state) do
    Logger.info("started Monitor")
    Reporter.send_start_event
    {:ok, state}
  end


end
