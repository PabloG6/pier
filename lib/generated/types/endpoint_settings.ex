defmodule Docker.Types.EndpointSettings do
  defstruct [
    :Aliases,
    :DriverOpts,
    :EndpointID,
    :Gateway,
    :GlobalIPv6Address,
    :GlobalIPv6PrefixLen,
    :IPAMConfig,
    :IPAddress,
    :IPPrefixLen,
    :IPv6Gateway,
    :Links,
    :MacAddress,
    :NetworkID
  ]
end