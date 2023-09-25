defmodule Docker.Types.HealthConfig do
  defstruct [:Interval, :Retries, :StartPeriod, :Test, :Timeout]
end