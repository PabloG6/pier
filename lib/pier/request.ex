defmodule Pier.Request do

  alias Pier.Request
  @type t :: %__MODULE__{
    endpoint: String.t() | nil,
    headers: map | nil,
    method: Stripe.API.method() | nil,
    opts: Keyword.t() | nil,
    params: map
  }

  defstruct [
  :endpoint,
  headers: nil,
  method: nil,
  opts: [],
  params: %{}

  ]

  def new_request(opts \\ []) do
    headers =
      Keyword.get(opts, :headers, %{})
      |> Map.merge(%{})
      %Request{headers: headers, opts: opts}
  end
  @spec make_request(t()) :: {:ok, struct()} | :error
  def make_request(request) do
    {:ok, request}
  end

  def put_endpoint(request, path) do
    %{request | endpoint: path}
  end

  def put_method(request, method) do
    %{request | method:  method}
  end


  def put_body_params(request, params, opts) do
 IO.puts inspect(params)
 IO.inspect opts
    request
  end
end
