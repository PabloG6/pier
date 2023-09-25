defmodule Docker.Types.SystemVersion do
  defstruct [
    :ApiVersion,
    :Arch,
    :BuildTime,
    :Components,
    :Experimental,
    :GitCommit,
    :GoVersion,
    :KernelVersion,
    :MinAPIVersion,
    :Os,
    :Platform,
    :Version
  ]
end