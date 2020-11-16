defmodule EventStore.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :payload, :map

      timestamps [updated_at: false]
    end
  end
end
