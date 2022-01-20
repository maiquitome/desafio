defmodule SecondChallenge do
  @moduledoc """
  ## Teste de Lógica - Desafio 2

  Nosso time de futebol terminou o campeonato. O resultado de cada correspondência é semelhante a "x: y". Os resultados de todas as partidas são registrados na coleção.

  Por exemplo: [" 3: 1 "," 2: 2 "," 0: 1 ", ...]

  Escreva uma função que leve essa arrecadação e conte os pontos da nossa equipe no campeonato. Regras para contagem de pontos para cada partida:

  - se x> y - 3 pontos
  - se x <y - 0 ponto
  - se x = y - 1 ponto

  Notas:

  - há 10 partidas no campeonato
  - 0 <= x <= 4
  - 0 <= y <= 4
  """

  def total_score do
    "Informe uma lista com os placares!"
  end

  @doc """
  ## Examples

      iex> scoreboards = [" 3: 1 "," 2: 2 "," 0: 1 ", "4: 2", "1:0", "0:0", "2:3", "4:1", "4:3", "1:2"]

      iex> SecondChallenge.total_score scoreboards
      17

  """
  @spec total_score(list) :: Integer
  def total_score(scoreboards) when is_list(scoreboards) do
    scoreboards
    |> Enum.map(fn score -> match_points(score) end)
    |> Enum.sum()
  end

  def total_score(_) do
    "Informe uma lista com os placares!"
  end

  defp match_points(score) when is_binary(score) do
    our_goals =
      score
      |> String.trim()
      |> String.first()
      |> String.to_integer()

    opponent_goals =
      score
      |> String.trim()
      |> String.last()
      |> String.to_integer()

    cond do
      our_goals > opponent_goals -> 3
      our_goals < opponent_goals -> 0
      our_goals == opponent_goals -> 1
    end
  end
end
