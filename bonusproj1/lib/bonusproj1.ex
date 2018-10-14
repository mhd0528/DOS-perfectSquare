defmodule Bonusproj1.Server do
  
  def startServer(n,k) do
    IO.puts("Starting Server ...")
    {:ok,ipAddressList}=:inet.getif()
    if(length(ipAddressList)==1) do
      IO.puts("The Machine is offline")
      System.halt(0);
    else
      osTuple=:os.type
      osType=Atom.to_string(elem(osTuple,0))
      if(osType=~"win") do
        {ipAddressTuple,_BroadcastAddress,_mask}=Enum.at(ipAddressList,0)
        nodeSetup(ipAddressTuple,n,k)
      else
        {ipAddressTuple,_BroadcastAddress,_mask}=Enum.at(ipAddressList,0)
        nodeSetup(ipAddressTuple,n,k)
      end
    end
  end

  def nodeSetup(ipAddressTuple,n,k) do
    IO.puts("Setting up the Server Node...")
    ipAddress=Integer.to_string(elem(ipAddressTuple,0))<>"."<>Integer.to_string(elem(ipAddressTuple,1))<>"."<>Integer.to_string(elem(ipAddressTuple,2))<>"."<>Integer.to_string(elem(ipAddressTuple,3))
    nodeName = "Elixir@"<>ipAddress
    Node.start(String.to_atom(nodeName))
    Node.set_cookie(String.to_atom(nodeName),:dos)
    :global.register_name(:serverPID,self())
    sendMessageToClient(n,k)

  end

  def sendMessageToClient(n,k) do
    IO.puts("Checking for Client PID List")
    clientPIDList=[]
    if(length(Node.list)===1) do
      distributeTask(clientPIDList,n,k)
    else
      storeClientPID(clientPIDList,n,k)
    end
  end

  def storeClientPID(clientPIDList,n,k) do
   
    if(length(clientPIDList)==1) do
      distributeTask(clientPIDList,n,k)
    else
      receive do
        {:ready,clientPID} -> 
          clientPIDList=Enum.concat(clientPIDList,[clientPID])
          storeClientPID(clientPIDList,n,k)
        end
    end
  end

  def distributeTask(clientPIDList,n,k) do
    IO.inspect("Distributing the task among clients")
    totalWorkLoad=String.to_integer(n)
    myK=String.to_integer(hd(k))
    noOfMachines=length(clientPIDList)
    workLoadForClient=totalWorkLoad/noOfMachines;
    for i <- 1..noOfMachines do
      currentClientPID=Enum.at(clientPIDList,i-1)
      send currentClientPID,{:task,i*workLoadForClient,myK}
    end
    getOutput(0)
  end

  def getOutput(myCount) do
    
    if(myCount===1) do
      IO.puts("End of Output")
    else
      receive do
        {:getIndex, startIndexFinal} ->
        IO.inspect(Kernel.trunc(startIndexFinal)) 
        getOutput(myCount)
              
        {:byeBye,_startIndexFinal} ->
        theCount=myCount+1
        getOutput(theCount)  
      end
    end
  end
end
