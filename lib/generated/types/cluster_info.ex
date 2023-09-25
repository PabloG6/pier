defmodule Docker.Types.ClusterInfo do
  defstruct [
    :CreatedAt,
    :DataPathPort,
    :DefaultAddrPool,
    :ID,
    :RootRotationInProgress,
    :Spec,
    :SubnetSize,
    :TLSInfo,
    :UpdatedAt,
    :Version
  ]
end