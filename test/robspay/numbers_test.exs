defmodule Robspay.NumbersTest do
  use ExUnit.Case

  alias Robspay.Numbers

  describe "sum_from_file/1" do
    test "when have file return sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      assert response == {:ok, %{result: 31}}
    end

    test "when have no file return error" do
      response = Numbers.sum_from_file("rusbé")

      assert response == {:error, %{message: "É! Quebrou"}}
    end
  end
end
