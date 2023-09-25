defmodule Docker.Types.ContainerState do
  defstruct [
    :Dead,
    :Error,
    :ExitCode,
    :FinishedAt,
    :Health,
    :OOMKilled,
    :Paused,
    :Pid,
    :Restarting,
    :Running,
    :StartedAt,
    :Status
  ]
end