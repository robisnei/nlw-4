defmodule RobspayWeb.WelcomeController do
  use RobspayWeb, :controller

  alias Robspay.Numbers

  def index(conn, %{"filename" => filename}) do
    filename
    |> Numbers.sum_from_file()
    |> handle_response(conn)
  end

  defp handle_response({:ok, %{result: result}}, conn) do
    conn
    |> put_status(:ok)
    |> json(%{message: "Bota pra torá papai, deu: #{result}"})
  end
  defp handle_response({:error, %{message: message}}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(%{message: "Humn deu ruim papai: #{message}"})
  end
end
