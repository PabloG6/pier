

single_amcro = quote do
  def unquote(:hello) do
    :block
  end
end
IO.inspect(single_amcro)
function_macro = quote do
  # @spec unquote(:dummy)()
  def unquote(:first)() do
    "hello"
  end

  def unquote(:second)() do
    "world"
  end
end

IO.inspect(function_macro)
Enum.unzip(function_macro)
IO.inspect()
unquoted_function_macros = Enum.map([function_macro, function_macro], fn (func) ->
  quote do
    unquote(func)
  end
end)

module_macro = quote do
  defmodule SomeMacro do
    unquote_splicing([function_macro, function_macro])
  end
end

module_macro_2 =  quote do
  defmodule SomeMacro do
    unquote_splicing(unquoted_function_macros)
  end
end
atom_macro = quote do
  :atom
end

Macro.to_string([atom_macro, atom_macro]) |> IO.puts()
Macro.to_string([quote do unquote(function_macro) end, quote do unquote(function_macro) end]) |> IO.puts
Macro.to_string(module_macro) |> Code.format_string!() |> IO.puts
Macro.to_string(module_macro_2) |> Code.format_string!() |> IO.puts
