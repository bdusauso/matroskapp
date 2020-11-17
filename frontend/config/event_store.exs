import Config

config :event_store, ecto_repos: [
  EventStore.Repo
]

config :event_store, EventStore.Repo,
  database: "event_store",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
