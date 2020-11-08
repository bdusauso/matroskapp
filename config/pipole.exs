import Config

config :pipole, ecto_repos: [
  Pipole.Repo
]

config :pipole, Pipole.Repo,
  database: "pipole",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
