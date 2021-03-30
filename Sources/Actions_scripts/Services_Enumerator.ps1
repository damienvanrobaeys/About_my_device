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
# $HTML_Services = "$Temp\OEM_Support\Services_List.html"
$HTML_Services = "$Temp\Services_List.html"
$CSS_File = "$ProgData\OEM_Support\Actions_Scripts\HTML_Export_CSS.css" # CSS for HTML Export

# *************************************************************************************************
$Title = "<p><span class=titre_list>Drivers list on $ComputerName</span><br><span class=subtitle>This document has been updated on $Date</span></p><br>"

$services_list_b = Get-wmiobject win32_service |
		Select-Object Name, Caption, State, Startmode | ConvertTo-HTML -Fragment

$colorTagTable = @{Stopped = ' class="stopped">Stopped<';
				   Running = ' class="running">Running<'}

$services_list = $services_list + $services_list_b
				 
$colorTagTable.Keys | foreach { $services_list = $services_list -replace ">$_<",($colorTagTable.$_) }

ConvertTo-HTML  -body " $Title<br>$services_list" -CSSUri $CSS_File | 		
Out-File -encoding ASCII $HTML_Services		
	
# *************************************************************************************************





	

