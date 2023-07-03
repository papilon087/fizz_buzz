defmodule FizzBuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  # Retornando o resultado.
  defp handle_file_read({:ok, result}) do
    result =
      result
      # "1,2,3,4" -> [1,2,3,4].
      |> String.split(",")
      # Convertendo cada elemento da String para inteiro.
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, result}
  end

  # Retornando a mensagem de erro
  defp handle_file_read({:error, reason}), do: {:error, "Error reading the file: #{reason}"}

  # convertendo os elementos e verificando.
  defp convert_and_evaluate_numbers(elem) do
    elem
    |> String.to_integer()
    |> evaluate_numbers()
  end

  # Estabelecendo a lógica do programa.
  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_numbers(number), do: number
end
