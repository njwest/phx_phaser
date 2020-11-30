defmodule Phaser.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Phaser.Repo,
      # Start the Telemetry supervisor
      PhaserWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Phaser.PubSub},
      # Start the Endpoint (http/https)
      PhaserWeb.Endpoint
      # Start a worker by calling: Phaser.Worker.start_link(arg)
      # {Phaser.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Phaser.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PhaserWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
