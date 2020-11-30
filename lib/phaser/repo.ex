defmodule Phaser.Repo do
  use Ecto.Repo,
    otp_app: :phaser,
    adapter: Ecto.Adapters.Postgres
end
