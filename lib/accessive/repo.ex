defmodule Accessive.Repo do
  use Ecto.Repo,
    otp_app: :accessive,
    adapter: Ecto.Adapters.Postgres
end
