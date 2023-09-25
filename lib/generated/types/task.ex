defmodule Docker.Types.Task do
  defstruct [
    :AssignedGenericResources,
    :CreatedAt,
    :DesiredState,
    :ID,
    :JobIteration,
    :Labels,
    :Name,
    :NodeID,
    :ServiceID,
    :Slot,
    :Spec,
    :Status,
    :UpdatedAt,
    :Version
  ]
end