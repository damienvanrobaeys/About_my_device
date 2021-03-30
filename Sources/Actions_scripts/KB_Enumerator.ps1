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
$HotfixCount = (Get-wmiobject win32_quickfixengineering  | measure-object).count
$Date = get-date
$HTML_Hotfix = "$Temp\hotfixes.html"
$CSS_File = "$ProgData\OEM_Support\Actions_Scripts\HTML_Export_CSS.css" # CSS for HTML Export

# *************************************************************************************************

# $Title = "<p><span class=titre_list>Last applications and system errors on $ComputerName</span><br><span class=subtitle>This document has been updated on $Date</span></p><br>"

$Title = "<p><span class=titre_list>Hotfix list on $ComputerName</span><br><span class=subtitle>$HotfixCount are installed on $Date</span></p><br>"


$Hotfix_list = Get-wmiobject win32_quickfixengineering  |
		Select-Object hotfixid, Description, Caption, InstalledOn  | Sort-Object InstalledOn | ConvertTo-HTML -Fragment

# $Hotfix_list = $Hotfix_list + $Hotfix_list_b

ConvertTo-HTML  -body " $Title<br>$Hotfix_list" -CSSUri $CSS_File | 		
Out-File -encoding ASCII $HTML_Hotfix	
	

# *************************************************************************************************


	
	




	

