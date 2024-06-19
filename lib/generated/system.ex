defmodule Pier.Engine.System do
  @moduledoc nil
  def info(opts \\ []) do
    path =
      Pier.Request.generate_base_url("/info")
      |> Pier.Request.add_path_params(%{}, opts)
      |> Pier.Request.add_query_params(%{}, opts)

    headers = Pier.Request.build_headers([], %{}, opts)
    Pier.Request.build(:get, path, headers)
  end

  def data_usage(opts \\ []) do
    optional_params = %{type: :query}

    path =
      Pier.Request.generate_base_url("/system/df")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def events(opts \\ []) do
    optional_params = %{filters: :query, until: :query, since: :query}

    path =
      Pier.Request.generate_base_url("/events")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def auth(opts \\ []) do
    optional_params = %{authConfig: :body}

    path =
      Pier.Request.generate_base_url("/auth")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def version(opts \\ []) do
    path =
      Pier.Request.generate_base_url("/version")
      |> Pier.Request.add_path_params(%{}, opts)
      |> Pier.Request.add_query_params(%{}, opts)

    headers = Pier.Request.build_headers([], %{}, opts)
    Pier.Request.build(:get, path, headers)
  end

  def ping(opts \\ []) do
    path =
      Pier.Request.generate_base_url("/_ping")
      |> Pier.Request.add_path_params(%{}, opts)
      |> Pier.Request.add_query_params(%{}, opts)

    headers = Pier.Request.build_headers([], %{}, opts)
    Pier.Request.build(:get, path, headers)
  end

  def ping_head(opts \\ []) do
    path =
      Pier.Request.generate_base_url("/_ping")
      |> Pier.Request.add_path_params(%{}, opts)
      |> Pier.Request.add_query_params(%{}, opts)

    headers = Pier.Request.build_headers([], %{}, opts)
    Pier.Request.build(:head, path, headers)
  end
end