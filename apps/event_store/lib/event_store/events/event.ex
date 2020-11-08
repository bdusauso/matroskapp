defmodule EventStore.Events.Event do
  use Ecto.Schema
  import Ecto.Changeset
  alias EventStore.Events.Event

  schema "events" do
    field :payload, :map

    timestamps [updated_at: false]
  end

  def changeset(%Event{} = event, attrs) do
    event
    |> cast(attrs, [:payload])
    |> validate_required([:payload])
  end
end
