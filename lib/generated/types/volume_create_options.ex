defmodule Docker.Types.VolumeCreateOptions do
  defstruct [:ClusterVolumeSpec, :Driver, :DriverOpts, :Labels, :Name]
end