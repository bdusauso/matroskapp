defmodule Pipole.Repo do
  use Ecto.Repo,
    otp_app: :pipole,
    adapter: Ecto.Adapters.Postgres
end
