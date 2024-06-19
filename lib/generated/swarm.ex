defmodule Pier.Engine.Swarm do
  @moduledoc "Engines can be clustered together in a swarm. Refer to the\n[swarm mode documentation](https://docs.docker.com/engine/swarm/)\nfor more information.\n"
  def init(opts \\ []) do
    optional_params = %{body: :body}

    path =
      Pier.Request.generate_base_url("/swarm/init")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def update(opts \\ []) do
    optional_params =
      %{
        version: :query,
        body: :body,
        rotateWorkerToken: :query,
        rotateManagerToken: :query,
        rotateManagerUnlockKey: :query
      }

    path =
      Pier.Request.generate_base_url("/swarm/update")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def join(opts \\ []) do
    optional_params = %{body: :body}

    path =
      Pier.Request.generate_base_url("/swarm/join")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def leave(opts \\ []) do
    optional_params = %{force: :query}

    path =
      Pier.Request.generate_base_url("/swarm/leave")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def inspect(opts \\ []) do
    path =
      Pier.Request.generate_base_url("/swarm")
      |> Pier.Request.add_path_params(%{}, opts)
      |> Pier.Request.add_query_params(%{}, opts)

    headers = Pier.Request.build_headers([], %{}, opts)
    Pier.Request.build(:get, path, headers)
  end

  def unlockkey(opts \\ []) do
    path =
      Pier.Request.generate_base_url("/swarm/unlockkey")
      |> Pier.Request.add_path_params(%{}, opts)
      |> Pier.Request.add_query_params(%{}, opts)

    headers = Pier.Request.build_headers([], %{}, opts)
    Pier.Request.build(:get, path, headers)
  end

  def unlock(opts \\ []) do
    optional_params = %{body: :body}

    path =
      Pier.Request.generate_base_url("/swarm/unlock")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end
end