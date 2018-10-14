defmodule Bonusproj1.CLI do
    def main(args \\ []) do
      args
      |> parse_args
      |> processInput
    end
  
    defp parse_args(args) do
      {_, myArg, _} =
        OptionParser.parse(args,strict: [:integer])
        myArg
    end
  
    defp processInput(myArg) do
        cond do
            length(myArg)===0 ->
                IO.puts("Please provide an IP address or the values of n and k")
                System.halt(0)
            length(myArg)===1 ->
                headOfArg=hd(myArg)
                if(headOfArg=~".") do
                    Bonusproj1.Client.startClient(headOfArg)
                else
                    IO.puts("Please provide both n and k")
                    System.halt(0)
                end
            length(myArg)===2 ->
                n=hd(myArg)
                k=tl(myArg)
                if(String.to_integer(hd(k))>String.to_integer(n)) do
                    IO.puts("the value of n cannot be less than k")
                    System.halt(0)
                else
                    Bonusproj1.Server.startServer(n,k)
                end
                
        end
    end
end
