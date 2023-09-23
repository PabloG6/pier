defmodule Pier.OpenApi.Schema.Operation do
  defstruct [
    :id,
    :method,
    :path,
    :name,
    :tags,
    :description,
    :path_params,
    :title,
    :query_params,
    :deprecated,
    :hijack_response,
    :body_params,
    :success_response
  ]
end
