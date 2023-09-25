defmodule Docker.Types.RegistryServiceConfig do
  defstruct [
    :AllowNondistributableArtifactsCIDRs,
    :AllowNondistributableArtifactsHostnames,
    :IndexConfigs,
    :InsecureRegistryCIDRs,
    :Mirrors
  ]
end