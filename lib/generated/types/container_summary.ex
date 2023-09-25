defmodule Docker.Types.ContainerSummary do
  defstruct [
    :Command,
    :Created,
    :HostConfig,
    :Id,
    :Image,
    :ImageID,
    :Labels,
    :Mounts,
    :Names,
    :NetworkSettings,
    :Ports,
    :SizeRootFs,
    :SizeRw,
    :State,
    :Status
  ]
end