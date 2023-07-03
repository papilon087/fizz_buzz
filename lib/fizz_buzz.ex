defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  #Retornando o resultado.
  def handle_file_read({:ok, result}), do: result
  #Retornando o erro
  def handle_file_read({:error, reason}), do: reason
end
