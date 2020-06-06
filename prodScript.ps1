$env:new=[System.Environment]::GetEnvironmentVariable("test")
$env:psmodulepath = $env:psmodulepath + ";"
$item = "UAT_outside"
$item
$env:PATH
$env:TMP
gci env:
$env:test
$item
whoami
Test-Path env:test
if (Test-Path env:test) { 
    $item = "echo "
    $item=Get-Content -Path Env:test

    if($item = "Production") {
        Copy-Item "C:\Sites\uat.xtracover.com\App_Data\Web.prod.config" -Destination "C:\Sites\uat.xtracover.com\Web.config" -Force
    }
}
