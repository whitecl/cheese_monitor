defmodule CheeseMonitor.Reporter do
  alias CheeseMonitor.Reporter.Client

  def send_start_event do
    Client.send_event('Monitor Start', 1.0)

    {:ok}
  end

  def send_rand_event do
    Client.send_event('Random Number', :rand.uniform())

    {:ok}
  end
end
