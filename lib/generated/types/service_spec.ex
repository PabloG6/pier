defmodule Docker.Types.ServiceSpec do
  defstruct [
    :EndpointSpec,
    :Labels,
    :Mode,
    :Name,
    :Networks,
    :RollbackConfig,
    :TaskTemplate,
    :UpdateConfig
  ]
end