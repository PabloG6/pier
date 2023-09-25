defmodule Docker.Types.Service do
  defstruct [
    :CreatedAt,
    :Endpoint,
    :ID,
    :JobStatus,
    :ServiceStatus,
    :Spec,
    :UpdateStatus,
    :UpdatedAt,
    :Version
  ]
end