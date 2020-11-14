defmodule EventStoreApi.EventsController do
  use EventStoreApi, :controller
  require Logger

  def create(conn, params) do
    EventStore.Events.create_event(params)

    send_resp(conn, 201, "")
  end
end
