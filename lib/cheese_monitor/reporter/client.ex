defmodule CheeseMonitor.Reporter.Client do
  require HTTPoison

  def send_event(category, value) do
    HTTPoison.start()

    time =
      DateTime.utc_now()
      |> DateTime.to_unix()

    query =
      %{
        "query" => """
          mutation {
            addReading(categoryName: "#{category}", value: #{value}, reading_at: #{time}) {
              id
            }
          }
        """,
      }
      |> Poison.encode!()

    HTTPoison.post!(
      "http://localhost:4000/api/graphql",
      query,
      [{"Content-Type", "application/json"}]
    )
  end
end
