defmodule Docker.Types.Mount do
  defstruct [
    :BindOptions,
    :Consistency,
    :ReadOnly,
    :Source,
    :Target,
    :TmpfsOptions,
    :Type,
    :VolumeOptions
  ]
end