[string]$arma_mods_dir = "'C:\Program Files (x86)\Steam\steamapps\common\Arma 3'"
[string]$arma_tools_dir = "'C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Tools"

$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
[string]$overthrow_dir = (get-item $dir).Parent.FullName

[string]$build_command = "& " + $arma_tools_dir + "\AddonBuilder\AddonBuilder.exe' " + $overthrow_dir + "\addons\overthrow_main " + $arma_mods_dir

Invoke-Expression $build_command
