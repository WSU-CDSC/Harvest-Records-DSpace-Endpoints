$Path = "c:\users\some\location\file.xml"
$dspaceIDS = "c:\users\some\location\dspaceIDS.txt"
$idList = Get-Content $dspaceIDS -ErrorAction SilentlyContinue
$dspaceLocal = "your local DSpace URL and OAI request"
#Example: "http://research.libraries.wsu.edu:8080/oai/request?verb=GetRecord&identifier=oai:research.libraries.wsu.edu:2376/"

foreach ($ID in $idList) {
$url = $dspaceLocal + $ID + "&metadataPrefix=xoai"
[xml]$xml = (New-Object System.Net.WebClient).DownloadString("$url")
$record = $xml.'OAI-PMH'.GetRecord.InnerXml | %{$_ -replace "\r",""} | %{$_ -replace "\n",""}
echo "$record" | Out-File -Append $Path
}

#Optional
Write-Host "Press any key to continue ..."
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
