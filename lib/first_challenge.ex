defmodule FirstChallenge do
  @moduledoc """
  ## Teste de Lógica - Desafio 1

  O primeiro século vai do ano 1 até e incluindo o ano 100, o segundo século - do ano 101 até e incluindo * o ano 200, etc.

  Dado um ano, retorne o século em que ele se encontra.

  ### Exemplos:

  * entrada: 1705, resultado: 18
  * entrada: 1900, resultado: 19
  * entrada: 1601, resultado: 17
  * entrada: 2000, resultado: 20
  """

  @doc """
  Returns a warning about the type of parameter accepted.

  ## Examples

      iex> FirstChallenge.finds_century_of_the_year()
      "Informe um ano para descobrir a qual século ele pertence."

  """
  @spec finds_century_of_the_year() :: String.t()
  def finds_century_of_the_year do
    "Informe um ano para descobrir a qual século ele pertence."
  end

  @doc """
  Given a year, it returns to which century that year belongs.

  ## Parameters

    - year: An integer that represents one year.

  ## Examples

      iex> FirstChallenge.finds_century_of_the_year 1705
      18

      iex> FirstChallenge.finds_century_of_the_year 1900
      19

      iex> FirstChallenge.finds_century_of_the_year 1601
      17

      iex> FirstChallenge.finds_century_of_the_year 2000
      20

      iex> FirstChallenge.finds_century_of_the_year 20.0
      "Informe um número inteiro!"

      iex> FirstChallenge.finds_century_of_the_year "teste"
      "Informe um número inteiro!"

  """
  @spec finds_century_of_the_year(integer()) :: Integer
  def finds_century_of_the_year(year) when is_integer(year) do
    (year / 100)
    |> Float.ceil()
    |> round()
  end

  def finds_century_of_the_year(_) do
    "Informe um número inteiro!"
  end
end
