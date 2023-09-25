defmodule Docker.Types.SwarmInfo do
  defstruct [
    :Cluster,
    :ControlAvailable,
    :Error,
    :LocalNodeState,
    :Managers,
    :NodeAddr,
    :NodeID,
    :Nodes,
    :RemoteManagers
  ]
end