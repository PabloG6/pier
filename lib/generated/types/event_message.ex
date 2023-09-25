defmodule Docker.Types.EventMessage do
  defstruct [:Action, :Actor, :Type, :scope, :time, :timeNano]
end