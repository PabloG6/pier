defmodule Docker.Types.ImageSummary do
  defstruct [
    :Containers,
    :Created,
    :Id,
    :Labels,
    :ParentId,
    :RepoDigests,
    :RepoTags,
    :SharedSize,
    :Size,
    :VirtualSize
  ]
end