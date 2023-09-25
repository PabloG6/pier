defmodule Docker.Types.BuildCache do
  defstruct [
    :CreatedAt,
    :Description,
    :ID,
    :InUse,
    :LastUsedAt,
    :Parent,
    :Parents,
    :Shared,
    :Size,
    :Type,
    :UsageCount
  ]
end