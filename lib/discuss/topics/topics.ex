defmodule Discuss.Topics do
  @moduledoc """
    Topics context
  """

  import Ecto.Query, warn: false

  alias Discuss.Repo
  alias Discuss.Topics.Topic

  def create_topic(params \\ %{}) do
    %Topic{}
    |> Topic.changeset(params)
    |> Repo.insert()
  end
end