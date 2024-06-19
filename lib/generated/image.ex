defmodule Docker.Engine.Image do
  @moduledoc nil
  def build_prune(opts \\ []) do
    optional_params = %{all: :query, filters: :query, "keep-storage": :query}

    path =
      Pier.Request.generate_base_url("/build/prune")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def inspect(opts \\ []) do
    optional_params = %{name: :path}

    path =
      Pier.Request.generate_base_url("/images/{name}/json")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def create(opts \\ []) do
    optional_params =
      %{
        message: :query,
        tag: :query,
        repo: :query,
        "X-Registry-Auth": :header,
        platform: :query,
        changes: :query,
        fromImage: :query,
        fromSrc: :query,
        inputImage: :body
      }

    path =
      Pier.Request.generate_base_url("/images/create")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def commit(opts \\ []) do
    optional_params =
      %{
        pause: :query,
        tag: :query,
        author: :query,
        comment: :query,
        repo: :query,
        changes: :query,
        container: :query,
        containerConfig: :body
      }

    path =
      Pier.Request.generate_base_url("/commit")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def delete(opts \\ []) do
    optional_params = %{force: :query, name: :path, noprune: :query}

    path =
      Pier.Request.generate_base_url("/images/{name}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:delete, path, headers)
  end

  def list(opts \\ []) do
    optional_params = %{all: :query, filters: :query, "shared-size": :query, digests: :query}

    path =
      Pier.Request.generate_base_url("/images/json")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def load(opts \\ []) do
    optional_params = %{quiet: :query, imagesTarball: :body}

    path =
      Pier.Request.generate_base_url("/images/load")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def search(opts \\ []) do
    optional_params = %{term: :query, filters: :query, limit: :query}

    path =
      Pier.Request.generate_base_url("/images/search")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def push(opts \\ []) do
    optional_params = %{name: :path, tag: :query, "X-Registry-Auth": :header}

    path =
      Pier.Request.generate_base_url("/images/{name}/push")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def build(opts \\ []) do
    optional_params =
      %{
        memory: :query,
        remote: :query,
        rm: :query,
        nocache: :query,
        q: :query,
        target: :query,
        labels: :query,
        outputs: :query,
        t: :query,
        pull: :query,
        inputStream: :body,
        platform: :query,
        dockerfile: :query,
        extrahosts: :query,
        cachefrom: :query,
        forcerm: :query,
        memswap: :query,
        cpushares: :query,
        cpusetcpus: :query,
        cpuperiod: :query,
        cpuquota: :query,
        buildargs: :query,
        shmsize: :query,
        squash: :query,
        networkmode: :query,
        "Content-type": :header,
        "X-Registry-Config": :header
      }

    path =
      Pier.Request.generate_base_url("/build")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    IO.inspect headers
    Pier.Request.build(:post, path, headers)
  end

  def prune(opts \\ []) do
    optional_params = %{filters: :query}

    path =
      Pier.Request.generate_base_url("/images/prune")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def history(opts \\ []) do
    optional_params = %{name: :path}

    path =
      Pier.Request.generate_base_url("/images/{name}/history")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def get(opts \\ []) do
    optional_params = %{name: :path}

    path =
      Pier.Request.generate_base_url("/images/{name}/get")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def get_all(opts \\ []) do
    optional_params = %{names: :query}

    path =
      Pier.Request.generate_base_url("/images/get")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def tag(opts \\ []) do
    optional_params = %{name: :path, tag: :query, repo: :query}

    path =
      Pier.Request.generate_base_url("/images/{name}/tag")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end
end
