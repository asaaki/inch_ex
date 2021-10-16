defmodule InchEx.Application do
  use Application

  # https://github.com/rrrene/inch_ex/pull/93
  def start(_type, _args) do
    children = [
      InchEx.UI.Shell
    ]

    opts = [strategy: :one_for_one, name: InchEx.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
