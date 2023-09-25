defmodule Docker.Types.ProcessConfig do
  defstruct [:arguments, :entrypoint, :privileged, :tty, :user]
end