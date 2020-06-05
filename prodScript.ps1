$env:new=[System.Environment]::GetEnvironmentVariable("new")
$env:psmodulepath = $env:psmodulepath + ";"
$item = "UAT_outside"
$item
$env:PATH
$env:TMP
gci env:
$env:new
$item
whoami
Test-Path env:new
if (Test-Path env:new) { 
    $item = "echo "
    $item=Get-Content -Path Env:new

    if($item = "Production") {
        Copy-Item "C:\Sites\uat.xtracover.com\App_Data\Web.prod.config" -Destination "C:\Sites\uat.xtracover.com\Web.config" -Force
    }
}
