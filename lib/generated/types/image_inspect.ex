defmodule Docker.Types.ImageInspect do
  defstruct [
    :Architecture,
    :Author,
    :Comment,
    :Config,
    :Container,
    :ContainerConfig,
    :Created,
    :DockerVersion,
    :GraphDriver,
    :Id,
    :Metadata,
    :Os,
    :OsVersion,
    :Parent,
    :RepoDigests,
    :RepoTags,
    :RootFS,
    :Size,
    :Variant,
    :VirtualSize
  ]
end