defmodule CheeseMonitor.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  @target Mix.target()

  require Logger
  use Application

  def start(_type, _args) do
    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CheeseMonitor.Supervisor]
    Logger.debug("starting Supervisor")
    Supervisor.start_link(children(@target), opts)
  end

  # List all child processes to be supervised
  def children(:host) do
    [
      # Starts a worker by calling: CheeseMonitor.Worker.start_link(arg)
      # {CheeseMonitor.Worker, arg},
      CheeseMonitor.Monitor
    ]
  end

  def children(_target) do
    [
      # Starts a worker by calling: CheeseMonitor.Worker.start_link(arg)
      # {CheeseMonitor.Worker, arg},
    ]
  end
end
