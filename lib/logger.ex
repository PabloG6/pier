defmodule Pier.CustomLogger do


  defmacro __using__(opts) do
    quote do
      options = unquote(opts)
      require Logger
      Logger.metadata([module_name: options[:name]])
    end

  end
end
