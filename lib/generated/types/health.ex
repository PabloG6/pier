defmodule Docker.Types.Health do
  defstruct [:FailingStreak, :Log, :Status]
end