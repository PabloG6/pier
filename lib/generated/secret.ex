defmodule Pier.Engine.Secret do
  @moduledoc "Secrets are sensitive data that can be used by services. Swarm mode must\nbe enabled for these endpoints to work.\n"
  def update(opts \\ []) do
    optional_params = %{id: :path, version: :query, body: :body}

    path =
      Pier.Request.generate_base_url("/secrets/{id}/update")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def delete(opts \\ []) do
    optional_params = %{id: :path}

    path =
      Pier.Request.generate_base_url("/secrets/{id}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:delete, path, headers)
  end

  def inspect(opts \\ []) do
    optional_params = %{id: :path}

    path =
      Pier.Request.generate_base_url("/secrets/{id}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def create(opts \\ []) do
    optional_params = %{body: :body}

    path =
      Pier.Request.generate_base_url("/secrets/create")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def list(opts \\ []) do
    optional_params = %{filters: :query}

    path =
      Pier.Request.generate_base_url("/secrets")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end
end