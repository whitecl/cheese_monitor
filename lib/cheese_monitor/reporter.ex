defmodule Reporter do
  require HTTPoison

  def send_start_event do
    HTTPoison.start()

    time =
      DateTime.utc_now()
      |> DateTime.to_unix()

    query =
      %{
        "operationName" => "",
        "query" => """
          mutation {
            addReading(categoryName: "Monitor Start", value: 1.0, reading_at: #{time}) {
              id
            }
          }
        """,
        "variables" => ""
      }
      |> Poison.encode!()

    HTTPoison.post!(
      "http://localhost:4000/api/graphql",
      query,
      [{"Content-Type", "application/json"}]
    )

    {:ok}
  end
end
