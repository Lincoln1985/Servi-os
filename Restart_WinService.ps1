##Este cmdlet ir� gravar na mem�ria a lista de servidores e criar a variagel $server##
$server = Get-Content "C:\Servidores.txt"

Clear-Host

##Este proximo cmdlet ir� printar na tela a lista dos servidores do arquivo .txt##
$server 

##Este cmdlet ir� executar o restart do seri�o nos servidores da variavel $server##
Get-Service -Name "sevi�o" -ComputerName $server | restart-Service

##cmdlet para imprimir o status do servi�o nos servidores da variavel $server##
Get-Service -name "servi�o" -ComputerName $server