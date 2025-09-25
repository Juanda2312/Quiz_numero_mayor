#Utilizando divide y venceras
defmodule MayorLista do
  def main do
    n = [1,8,3,25,3,20]
    mayor(n)
    |> IO.puts()
  end

  def mayor([]), do: 0
  def mayor([n]), do: n
  def mayor(lista) do
      mitad = div(length(lista),2)
      {a,b} = Enum.split(lista,mitad)

      mayor_a = mayor(a)
      mayor_b = mayor(b)

      if mayor_a >= mayor_b do
        mayor_a
      else
        mayor_b
      end
  end
end

MayorLista.main()
