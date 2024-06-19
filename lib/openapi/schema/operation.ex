defmodule Pier.OpenApi.Schema.Operation do
  defstruct [
    :id,
    :method,
    :path,
    :request_headers,
    :tags,
    :description,
    :path_params,
    :title,
    :function_name,
    :query_params,
    :params,
    :deprecated,
    :hijack_response,
    :body_params,
    :headers,
    :success_response
  ]
end
