defmodule Discuss.CommentsChannel do
  use DiscussWeb, :channel

  def join(name, _auth_msg, socket) do
    {:ok, %{hey: "there"}, socket}
  end

  def handle_in(name, message, socket) do
    IO.inspect("@@@")
    IO.inspect(name)
    IO.inspect(message)
    {:reply, :ok, socket}
  end
end