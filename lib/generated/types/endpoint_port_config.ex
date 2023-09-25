defmodule Docker.Types.EndpointPortConfig do
  defstruct [:Name, :Protocol, :PublishMode, :PublishedPort, :TargetPort]
end