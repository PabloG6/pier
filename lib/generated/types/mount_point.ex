defmodule Docker.Types.MountPoint do
  defstruct [:Destination, :Driver, :Mode, :Name, :Propagation, :RW, :Source, :Type]
end