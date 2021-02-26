defmodule Robspay.Repo do
  use Ecto.Repo,
    otp_app: :robspay,
    adapter: Ecto.Adapters.Postgres
end
