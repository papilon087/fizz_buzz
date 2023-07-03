defmodule FizzBuzzTest do
  use ExUnit.Case

  # Nome da função pública que queremos testar.
  describe "build/1" do
    # descrição do nosso teste.
    test "when a valid file is provided, returns the converted list" do
      expected_response = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}
      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    # Caso dê erro na execução.
    test "when and invalid file is provided, returns and error" do
      expected_response = {:error, "Error reading the file: enoent"}
      assert FizzBuzz.build("invalid.txt") == expected_response
    end
  end
end
