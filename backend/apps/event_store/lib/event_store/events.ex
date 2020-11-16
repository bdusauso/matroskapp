defmodule EventStore.Events do
  alias EventStore.Repo
  alias EventStore.Events.Event

  def list_events, do: Repo.all(Event)

  def create_event(payload) do
    %Event{}
    |> Event.changeset(%{payload: payload})
    |> Repo.insert!()
  end
end
