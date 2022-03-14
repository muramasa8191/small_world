defmodule SmallWorld.Repo do
  use Ecto.Repo,
    otp_app: :small_world,
    adapter: Ecto.Adapters.Postgres
end
