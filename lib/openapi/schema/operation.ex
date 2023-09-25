defmodule Pier.OpenApi.Schema.Operation do
  defstruct [
    :id,
    :method,
    :path,

    :tags,
    :description,
    :path_params,
    :title,
    :function_name,
    :query_params,
    :deprecated,
    :hijack_response,
    :body_params,
    :headers,
    :success_response
  ]
end
