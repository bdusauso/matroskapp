defmodule EventStoreApi.Router do
  use EventStoreApi, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # scope "/", EventStoreApi do
  #   pipe_through :browser
  # end

  # Other scopes may use custom stacks.
  scope "/api", EventStoreApi do
    pipe_through :api

    post "/events", EventsController, :create
  end
end
