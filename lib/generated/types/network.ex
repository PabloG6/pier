defmodule Docker.Types.Network do
  defstruct [
    :Attachable,
    :Containers,
    :Created,
    :Driver,
    :EnableIPv6,
    :IPAM,
    :Id,
    :Ingress,
    :Internal,
    :Labels,
    :Name,
    :Options,
    :Scope
  ]
end