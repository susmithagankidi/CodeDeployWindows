$item = "UAT_outside"
$item
$env:PATH
$env:TMP
$env:test_env 
$item
Test-Path env:test_env
if (Test-Path env:test_env) { 
    $item = "echo "
    $item=Get-Content -Path Env:EnvironmentType

    if($item = "Production") {
        Copy-Item "C:\Sites\uat.xtracover.com\App_Data\Web.prod.config" -Destination "C:\Sites\uat.xtracover.com\Web.config" -Force
    }
}
