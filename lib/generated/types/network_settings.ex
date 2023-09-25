defmodule Docker.Types.NetworkSettings do
  defstruct [
    :Bridge,
    :EndpointID,
    :Gateway,
    :GlobalIPv6Address,
    :GlobalIPv6PrefixLen,
    :HairpinMode,
    :IPAddress,
    :IPPrefixLen,
    :IPv6Gateway,
    :LinkLocalIPv6Address,
    :LinkLocalIPv6PrefixLen,
    :MacAddress,
    :Networks,
    :Ports,
    :SandboxID,
    :SandboxKey,
    :SecondaryIPAddresses,
    :SecondaryIPv6Addresses
  ]
end