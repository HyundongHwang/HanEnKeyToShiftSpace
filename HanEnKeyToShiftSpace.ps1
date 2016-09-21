$reg_path = "HKLM:\SYSTEM\CurrentControlSet\Services\i8042prt\Parameters\"


Set-ItemProperty -Path $reg_path -Name "LayerDriver KOR" -Value "kbd101c.dll" -Type string
Set-ItemProperty -Path $reg_path -Name "OverrideKeyboardType" -Value 8 -Type dword
Set-ItemProperty -Path $reg_path -Name "OverrideKeyboardSubtype" -Value 5 -Type dword
Set-ItemProperty -Path $reg_path -Name "OverrideKeyboardIdentifier" -Value "PCAT_101CKEY" -Type string

Get-ItemProperty -Path $reg_path