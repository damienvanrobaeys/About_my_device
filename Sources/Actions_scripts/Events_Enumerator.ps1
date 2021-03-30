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
$All_System_Error = get-eventlog System   | where {$_.EntryType -eq "Error"} | select timegenerated, source, eventid, message
$All_Apps_Error = get-eventlog Application   | where {$_.EntryType -eq "Error"} | select timegenerated, source, eventid, message

$Date = get-date
# $HTML_Events = "$Temp\OEM_Support\Events_List.html"
$HTML_Events = "$Temp\Events_List.html"
# $CSS_File = "$temp\OEM_Support\Actions_Scripts\HTML_Export_CSS.css" # CSS for HTML Export
$CSS_File = "$ProgData\OEM_Support\Actions_Scripts\HTML_Export_CSS.css" # CSS for HTML Export

# *************************************************************************************************

$Title = "<p><span class=titre_list>Last applications and system errors on $ComputerName</span><br><span class=subtitle>This document has been updated on $Date</span></p><br>"

$System_Events = "<p class=New_object>Last 10 system errors</p>"	
$System_Events_b = $All_System_Error | select -first 10 | % { New-Object psobject -Property @{
Date= $_."timegenerated"	
Source=$_."source"
Event_ID = $_."eventid"	
Issue=$_."message"		
}}  | select Date, Source, Event_ID, Issue | ConvertTo-HTML -Fragment	

$System_Events = $System_Events + $System_Events_b

$Apps_Events = "<p class=New_object>Last 10 application errors</p>"	
$Apps_Events_b = $All_Apps_Error | select -first 10 | % { New-Object psobject -Property @{
Date= $_."timegenerated"	
Source=$_."source"
Event_ID = $_."eventid"	
Issue=$_."message"		
}}  | select Date, Source, Event_ID, Issue | ConvertTo-HTML -Fragment	

$Apps_Events = $Apps_Events + $Apps_Events_b

ConvertTo-HTML  -body " $Title<br>$System_Events<br><br>$Apps_Events" -CSSUri $CSS_File | 		
Out-File -encoding ASCII $HTML_Events
	
# *************************************************************************************************


