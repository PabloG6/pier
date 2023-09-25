defmodule Docker.Types.OCIPlatform do
  defstruct [:architecture, :os, :"os.features", :"os.version", :variant]
end