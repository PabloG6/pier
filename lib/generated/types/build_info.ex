defmodule Docker.Types.BuildInfo do
  defstruct [:aux, :error, :errorDetail, :id, :progress, :progressDetail, :status, :stream]
end