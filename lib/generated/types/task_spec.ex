defmodule Docker.Types.TaskSpec do
  defstruct [
    :ContainerSpec,
    :ForceUpdate,
    :LogDriver,
    :NetworkAttachmentSpec,
    :Networks,
    :Placement,
    :PluginSpec,
    :Resources,
    :RestartPolicy,
    :Runtime
  ]
end