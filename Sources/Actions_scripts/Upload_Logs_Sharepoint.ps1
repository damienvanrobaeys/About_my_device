# $Get_Sharepoint_Content = [xml](get-content "$current_folder\Config\Sharepoint.xml")
# $Get_Sharepoint_Content = [xml](get-content "..\Config\Sharepoint.xml")
# cd..
# $Get_Sharepoint_Content = [xml](get-content ".\Config\Sharepoint.xml")
$Get_Sharepoint_Content = [xml](get-content "D:\GRT_AboutMyComputer\SD\Sources\Config\Sharepoint.xml")
$Sharepoint_App_ID = $Get_Sharepoint_Content.Infos.App_ID
$Sharepoint_App_Secret = $Get_Sharepoint_Content.Infos.App_Secret
$Sharepoint_Folder = $Get_Sharepoint_Content.Infos.Folder
$Sharepoint_Site_URL = $Get_Sharepoint_Content.Infos.Site_URL		

$CompName = $env:computername
# $Logs_Collect_Folder = "C:\Device_Logs_From" + "_$CompName"
$Logs_Collect_Folder = "$env:temp\Device_Logs_From" + "_$CompName"
$Logs_Collect_Folder_ZIP = "$Logs_Collect_Folder" + ".zip"

$Is_Nuget_Installed = $False     
If(!(Get-PackageProvider | where {$_.Name -eq "Nuget"}))
	{                                         
		Write_Log -Message_Type "SUCCESS" -Message "The package Nuget is not installed"                                                                          
		Try
			{
				[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
				Install-PackageProvider -Name Nuget -MinimumVersion 2.8.5.201 -Force -Confirm:$False | out-null                                                                                                                 
				$Is_Nuget_Installed = $True                                                                                     
			}
		Catch
			{
				Break
			}
	}
Else
	{
		$Is_Nuget_Installed = $True      
	}

If($Is_Nuget_Installed -eq $True)
	{
		$Script:PnP_Module_Status = $False
		$Module_Name = "PnP.PowerShell"
		If (!(Get-InstalledModule $Module_Name -ErrorAction silentlycontinue)) 				
			{ 
				Install-Module $Module_Name -Force -Confirm:$False -ErrorAction SilentlyContinue | out-null   
				$Module_Version = (Get-Module $Module_Name -listavailable).version
				$PnP_Module_Status = $True								                                                                                                                                                                                                                 
			} 
		Else
			{                                                                                                                                                                  
				Import-Module $Module_Name -Force -ErrorAction SilentlyContinue 
				$PnP_Module_Status = $True	                                                  
			}                                                       
	}

If($PnP_Module_Status -eq $True)
	{ 
		Try
			{
				Connect-PnPOnline -Url $Sharepoint_Site_URL -ClientID $Sharepoint_App_ID -ClientSecret $Sharepoint_App_Secret			
				$Sharepoint_Status = "OK"
			}
		Catch
			{
				$Sharepoint_Status = "KO"	
			}	 
	
		If($Sharepoint_Status -eq "OK")
			{

				Add-PnPFile -Path $Logs_Collect_Folder_ZIP -Folder $Sharepoint_Folder #| out-null
			}	
	}