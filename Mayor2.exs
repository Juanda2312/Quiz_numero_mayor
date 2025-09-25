#sin divide y venceras
defmodule MayorLista do
  def main do
    n = [1,8,3,25,3,20]
    mayor(n)
    |> IO.puts()
  end

  def mayor([]),  do: 0
  def mayor([n]), do: n
  def mayor([head|tail]) do
    mayor_tail = mayor(tail)
    if head > mayor_tail do
      head
    else
      mayor_tail
    end
  end
end
MayorLista.main()
