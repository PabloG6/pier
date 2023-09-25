defmodule Docker.Types.Volume do
  defstruct [
    :ClusterVolume,
    :CreatedAt,
    :Driver,
    :Labels,
    :Mountpoint,
    :Name,
    :Options,
    :Scope,
    :Status,
    :UsageData
  ]
end