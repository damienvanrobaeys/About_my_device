#***************************************************************************************************************
# Author: Damien VAN ROBAEYS
# Date: 11/04/2016
# Website: http://www.systanddeploy.com
# Twitter: https://twitter.com/syst_and_deploy
#***************************************************************************************************************

# ***********************************************************************
						# Variables initialization
# ***********************************************************************
$Temp = $env:temp
$ProgData = $env:PROGRAMDATA
$ComputerName = gc env:computername
$Date = get-date
$HTML_Drivers = "$temp\Drivers_List.html"
# $HTML_Drivers = "$temp\OEM_Support\Drivers_List.html"
$Global:Current_Folder =(get-location).path 
# $CSS_File = "$temp\OEM_Support\Actions_Scripts\HTML_Export_CSS.css" # CSS for HTML Export
$CSS_File = "$ProgData\OEM_Support\Actions_Scripts\HTML_Export_CSS.css" # CSS for HTML Export

$Title = "<p><span class=titre_list>Drivers list on $ComputerName</span><br><span class=subtitle>This document has been updated on $Date</span></p><br>"
	
$Drivers_list_b = gwmi Win32_PnPSignedDriver | 
		Select-Object devicename, manufacturer, driverversion, infname, IsSigned | 
		where-object {$_.devicename -ne $null -and $_.infname -ne $null} | sort-object devicename -Unique | ConvertTo-HTML -Fragment			

$Drivers_list = $Drivers_list + $Drivers_list_b

ConvertTo-HTML  -body " $Title<br>$Drivers_list" -CSSUri $CSS_File | 		
Out-File -encoding ASCII $HTML_Drivers		
	
