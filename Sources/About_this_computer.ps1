#================================================================================================================
#
# Author 		 : Damien VAN ROBAEYS
#
#================================================================================================================


[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')  				| out-null
[System.Reflection.Assembly]::LoadWithPartialName('presentationframework') 				| out-null
[System.Reflection.Assembly]::LoadFrom('assembly\MahApps.Metro.dll')       				| out-null
[System.Reflection.Assembly]::LoadFrom('assembly\LiveCharts.dll')        | out-null  	
[System.Reflection.Assembly]::LoadFrom('assembly\LiveCharts.Wpf.dll') 	 | out-null  
[System.Reflection.Assembly]::LoadFrom('assembly\MahApps.Metro.IconPacks.dll')      | out-null  
[System.Reflection.Assembly]::LoadFrom('assembly\LoadingIndicators.WPF.dll')       				| out-null

function LoadXml ($global:filename)
{
    $XamlLoader=(New-Object System.Xml.XmlDocument)
    $XamlLoader.Load($filename)
    return $XamlLoader
}

# Load MainWindow
$XamlMainWindow=LoadXml("About_this_computer.xaml")
$Reader=(New-Object System.Xml.XmlNodeReader $XamlMainWindow)
$Form=[Windows.Markup.XamlReader]::Load($Reader)

########################################################################################################################################################################################################	
#*******************************************************************************************************************************************************************************************************
# 																		BUTTONS AND LABELS INITIALIZATION 
#*******************************************************************************************************************************************************************************************************
########################################################################################################################################################################################################

#************************************************************************** DATAGRID *******************************************************************************************************************
$Doughnut = $form.FindName("Doughnut")

$OS_Titre = $form.FindName("OS_Titre")
$OS_Version = $form.FindName("OS_Version")
$Processeur = $form.FindName("Processeur")
$Memory = $form.FindName("Memory")
$Graphisme = $form.FindName("Graphisme")
$Serial = $form.FindName("Serial")
$My_Disk_Info = $form.FindName("My_Disk_Info")
$Ma_Machine = $form.FindName("Ma_Machine")
$Refresh_Once = $form.FindName("Refresh_Once")
$Mon_FARO = $form.FindName("Mon_FARO")
$Tab_control = $form.FindName("Tab_control")
$Pending_Reboot = $form.FindName("Pending_Reboot")
$IsRebootRequired = $form.FindName("IsRebootRequired")
$MonitorList = $form.FindName("MonitorList")
$Device_Model = $form.FindName("Device_Model")

$Last_Reboot = $form.FindName("Last_Reboot")
$Last_Reboot_Alert = $form.FindName("Last_Reboot_Alert")
$Reboot_Alert_Block = $form.FindName("Reboot_Alert_Block")

$Website = $form.FindName("Website")
$Chat = $form.FindName("Chat")
$Mail = $form.FindName("Mail")
$Yammer = $form.FindName("Yammer")
$Send_Logs = $form.FindName("Send_Logs")
$Our_Phone = $form.FindName("Our_Phone")

$Yammer_Block = $form.FindName("Yammer_Block")
$Chat_Block = $form.FindName("Chat_Block")
$Website_Block = $form.FindName("Website_Block")
$Issue_Block = $form.FindName("Issue_Block")
$Tool_Logo = $form.FindName("Tool_Logo")



$Doughnut_OneDrive = $form.FindName("Doughnut_OneDrive")
$My_OneDrive_Info = $form.FindName("My_OneDrive_Info")
$MonBouton = $form.FindName("MonBouton")
$Next_logo = $form.FindName("Next_logo")
$refresh_monitor = $form.FindName("refresh_monitor")

$Disk_Percent_Title = $form.FindName("Disk_Percent_Title")
$SubMenu_Home = $form.FindName("SubMenu_Home")

$Soft_List = $form.FindName("Soft_List")
$Export_Services = $form.FindName("Export_Services")
$Export_Process = $form.FindName("Export_Process")
$Updates_History = $form.FindName("Updates_History")
$Action_Sleep = $form.FindName("Action_Sleep")
$Action_Restart = $form.FindName("Action_Restart")
$Action_Shutdown = $form.FindName("Action_Shutdown")
$Action_LogOut = $form.FindName("Action_LogOut")
$Logs_Support = $form.FindName("Logs_Support")

$GPO_User = $form.FindName("GPO_User")
$Scheduled_Tasks = $form.FindName("Scheduled_Tasks")

$Chart = $form.FindName("Chart")
$Bar = $form.FindName("Bar")
$MyDesktop = $form.FindName("MyDesktop")
$MyDocs = $form.FindName("MyDocs")
$Downloads = $form.FindName("Downloads")
$Music = $form.FindName("Music")
$Free = $form.FindName("Free")

$Storage_Design = $form.FindName("Storage_Design")
$Disk_Warning = $form.FindName("Disk_Warning")
$Main_bar = $form.FindName("Main_bar")


$Legend_Border_MyDesktop = $form.FindName("Legend_Border_MyDesktop")
$Legend_Label_MyDesktop = $form.FindName("Legend_Label_MyDesktop")

$Legend_Border_MyDocs = $form.FindName("Legend_Border_MyDocs")
$Legend_Label_MyDocs = $form.FindName("Legend_Label_MyDocs")

$Legend_Border_Downloads = $form.FindName("Legend_Border_Downloads")
$Legend_Label_Downloads = $form.FindName("Legend_Label_Downloads")

$Legend_Border_Music = $form.FindName("Legend_Border_Music")
$Legend_Label_Music = $form.FindName("Legend_Label_Music")

$Legend_Border_Free = $form.FindName("Legend_Border_Free")
$Legend_Label_Free = $form.FindName("Legend_Label_Free")


$Missing_Drivers_Label = $form.FindName("Missing_Drivers_Label")
$Printer = $form.FindName("Printer")
$My_IP = $form.FindName("My_IP")
$My_MAC = $form.FindName("My_MAC")
$Domain_name = $form.FindName("Domain_name")
$Site_code = $form.FindName("Site_code")
$SCCM_Status = $form.FindName("SCCM_Status")
$BIOS_Version = $form.FindName("BIOS_Version")
$Installed_antivirus = $form.FindName("Installed_antivirus")
$Check_Drivers_Block = $form.FindName("Check_Drivers_Block")
$Missing_Drivers_Block = $form.FindName("Missing_Drivers_Block")


$Graphic_Card_details = $form.FindName("Graphic_Card_details")
$Wifi_Card = $form.FindName("Wifi_Card")

$MECM_Client_Block = $form.FindName("MECM_Client_Block")
$MECM_Client_Version_Block = $form.FindName("MECM_Client_Version_Block") 
$MECM_Client_Version_Label = $form.FindName("MECM_Client_Version_Label")


$antivirus_Status_Label = $form.FindName("antivirus_Status_Label")
$antivirus_Last_Update_Block = $form.FindName("antivirus_Last_Update_Block")
$antivirus_Last_Update_Label = $form.FindName("antivirus_Last_Update_Label")
$antivirus_Last_Scan_Block = $form.FindName("antivirus_Last_Scan_Block")
$antivirus_Last_Scan_Label = $form.FindName("antivirus_Last_Scan_Label")
$Check_LastScan_Block = $form.FindName("Check_LastScan_Block")

$Domain_WKG_Label = $form.FindName("Domain_WKG_Label")

$List_Large_Files = $form.FindName("List_Large_Files")



$Storage_Design.Add_Click({
	If($Storage_Design.IsChecked -eq $True)
		{
			$Chart.Visibility = "Visible"
			$Bar.Visibility = "Collapsed"		
		}
	Else
		{
			$Chart.Visibility = "Collapsed"
			$Bar.Visibility = "Visible"		
		}	
})


$Global:Current_Folder = split-path $MyInvocation.MyCommand.Path






########################################################################################################################################################################################################	
#*******************************************************************************************************************************************************************************************************
#																						 PROGRESSBAR DESIGN USER
#*******************************************************************************************************************************************************************************************************
########################################################################################################################################################################################################

$syncProgress = [hashtable]::Synchronized(@{})
$childRunspace = [runspacefactory]::CreateRunspace()
$childRunspace.ApartmentState = "STA"
$childRunspace.ThreadOptions = "ReuseThread"         
$childRunspace.Open()
$childRunspace.SessionStateProxy.SetVariable("syncProgress",$syncProgress)          
$PsChildCmd = [PowerShell]::Create().AddScript({   
    [xml]$xaml = @"
	<Controls:MetroWindow 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
		xmlns:i="http://schemas.microsoft.com/expression/2010/interactivity"				
		xmlns:Controls="clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro"	
		xmlns:loadin="clr-namespace:LoadingIndicators.WPF;assembly=LoadingIndicators.WPF"				
        Name="WindowProgress" 
		WindowStyle="None" 
		AllowsTransparency="True" 
		UseNoneWindowStyle="True"	
		Width="650" 
		Height="400" 
		WindowStartupLocation ="CenterScreen"
		Topmost="true"
		BorderBrush="Gray"
		>

<Window.Resources>
	<ResourceDictionary>
		<ResourceDictionary.MergedDictionaries>
			<!-- LoadingIndicators resources -->
			<ResourceDictionary Source="pack://application:,,,/LoadingIndicators.WPF;component/Styles.xaml"/>	
			<!-- Mahapps resources -->
			<ResourceDictionary Source="pack://application:,,,/MahApps.Metro;component/Styles/Controls.xaml" />
			<ResourceDictionary Source="pack://application:,,,/MahApps.Metro;component/Styles/Fonts.xaml" />
			<ResourceDictionary Source="pack://application:,,,/MahApps.Metro;component/Styles/Colors.xaml" />
			<ResourceDictionary Source="pack://application:,,,/MahApps.Metro;component/Styles/Accents/Cobalt.xaml" />
			<ResourceDictionary Source="pack://application:,,,/MahApps.Metro;component/Styles/Accents/BaseDark.xaml" />		
		</ResourceDictionary.MergedDictionaries>
	</ResourceDictionary>
</Window.Resources>			

	<Window.Background>
		<SolidColorBrush Opacity="0.7" Color="#0077D6"/>
	</Window.Background>	
		
	<Grid>	
		<StackPanel Orientation="Vertical" VerticalAlignment="Center" HorizontalAlignment="Center">		
			<StackPanel Orientation="Vertical" HorizontalAlignment="Center" Margin="0,0,0,0">	
			<!--	<Controls:ProgressRing IsActive="True" Margin="0,0,0,0"  Foreground="White" Width="50"/> -->
				<loadin:LoadingIndicator Margin="0,5,0,0" Name="ArcsRing" SpeedRatio="1" Foreground="White" IsActive="True" Style="{DynamicResource LoadingIndicatorArcsRingStyle}"/>
			</StackPanel>								
			
			<StackPanel Orientation="Vertical" HorizontalAlignment="Center" Margin="0,20,0,0">				
				<Label Name="ProgressStep" Content="Getting information about your device" FontSize="17" Margin="0,0,0,0" Foreground="White"/>	
			</StackPanel>			
		</StackPanel>		
		
	</Grid>
</Controls:MetroWindow>
"@
  
    $reader=(New-Object System.Xml.XmlNodeReader $xaml)
    $syncProgress.Window=[Windows.Markup.XamlReader]::Load( $reader )
    $syncProgress.Label = $syncProgress.window.FindName("ProgressStep")	

    $syncProgress.Window.ShowDialog() #| Out-Null
    $syncProgress.Error = $Error
})




################ Launch Progress Bar  ########################  
Function Launch_modal_progress{    
    $PsChildCmd.Runspace = $childRunspace
    $Script:Childproc = $PsChildCmd.BeginInvoke()
	
}

################ Close Progress Bar  ########################  
Function Close_modal_progress{
    $syncProgress.Window.Dispatcher.Invoke([action]{$syncProgress.Window.close()})
    $PsChildCmd.EndInvoke($Script:Childproc) | Out-Null
}

########################################################################################################################################################################################################	
#*******************************************************************************************************************************************************************************************************
#																						 PROGRESSBAR DESIGN USER
#*******************************************************************************************************************************************************************************************************
########################################################################################################################################################################################################




# $Win32_LogicalDisk = Get-WmiObject Win32_LogicalDisk | where {$_.DriveType -eq "3"}
# If(($Win32_LogicalDisk.count) -gt 1)
	# {
		# ForEach ($disk in $Win32_LogicalDisk) ### Enum Disk 
			# {
				# $Disk_Caption = $disk.deviceid			
				# $Total_size = [Math]::Round(($disk.size/1GB),1)
				# $Free_size = [Math]::Round(($disk.Freespace/1GB),1) 
				# $Disk_information =  $Disk_information + "(" + $disk.deviceid + ") " + $Total_size + " GB Total / " +  + $Free_size + " GB Free `n"
			# }		
	# }
# Else
	# {
		# $Total_size = [Math]::Round(($Win32_LogicalDisk.size/1GB),1)
		# $Free_size = [Math]::Round(($Win32_LogicalDisk.Freespace/1GB),1) 
		# $Disk_information =  $Disk_information + "(" + $Win32_LogicalDisk.deviceid + ") " + $Total_size + " GB Total / " +  + $Free_size + " GB Free"
	# }

# $Disk_information = $Disk_information.trim()




$Win32_ComputerSystem = Get-WmiObject Win32_ComputerSystem 



###########################################################################################################################################	
#******************************************************************************************************************************************
#														 INFORMATIONS FROM DETAILS PART							 
#******************************************************************************************************************************************
###########################################################################################################################################	

Function Get_Details_Infos
	{
		# Get printer infos
		$Win32_Printer = Get-WmiObject -Query " SELECT * FROM Win32_Printer WHERE Default=$true"
		$Printer.Content = $Win32_Printer.name	
	
		# Get BIOS infos
		$Win32_BIOS = Get-WmiObject Win32_BIOS 
		$BIOS_Version.Content = $Win32_BIOS.SMBIOSBIOSVersion

		# Check drivvers part
		$Check_Drivers_Block.Visibility = "Collapsed"
		$Missing_Drivers_Block.Visibility = "Collapsed"

		# $Drivers_Test = Get-WmiObject Win32_PNPEntity | Where-Object {$_.ConfigManagerErrorCode -gt 0 }        
		# $Search_Missing_Drivers = ($Drivers_Test | Where-Object {$_.ConfigManagerErrorCode -eq 28}).Count

		# If ($Search_Missing_Drivers -gt 0)
			# {
				# $Check_Drivers_Block.Visibility = "Visible"
				# $Missing_Drivers_Block.Visibility = "Visible"
				# $Missing_Drivers_Label.Content = "$Search_Missing_Drivers drivers manquants"
				# $Missing_Drivers_Label.Foreground = "Yellow"	
				# $Missing_Drivers_Label.Fontweight = "Bold"					
			# }
		# Else
			# {		
				# $Missing_Drivers_Block.Visibility = "Collapsed"	
				# $Check_Drivers_Block.Visibility = "Collapsed"				
			# }



		################# Test if Domain or Network	#################
		If (($Win32_ComputerSystem.partofdomain -eq $True))
			{		
				$Domain_WKG_Label.Content = "Domain:"	
				$Domain_test = $env:USERDNSDOMAIN;
			}
		Else
			{
				$Domain_WKG_Label.Content = "Workgroup name :"		
				$Domain_test = $Win32_ComputerSystem.Workgroup 	
				$AD_Site_Name = "None"	
				$Domain_part_label.Visibility = "Collapsed"
				$Domain_part_Infos.Visibility = "Collapsed"
				$My_Site_Name.Visibility = "Collapsed"		
			}	


		# Get network infos
		$win32_networkadapterconfiguration = Get-WmiObject -class "Win32_NetworkAdapterConfiguration"  | Where {$_.IPEnabled -Match "True"}
		If ($win32_networkadapterconfiguration -eq $null)
			{
				$My_IP.content = "Not connected"
			}
		Else
			{	
				Foreach ($obj in $win32_networkadapterconfiguration)
					{
						$MAC_Address = $obj.MACAddress	
						$IP_Subnet = $obj.IPsubnet[0]	
						$IP_Address = $obj.IPAddress[0]	
					}
			}
			
		# Get default printer	
		$Win32_Printer = Get-WmiObject -Query " SELECT * FROM Win32_Printer WHERE Default=$true"	
		$Default_printer = $Win32_Printer.name
			
		# Get installed antivirus	
		$Get_Antivirus = Get-WmiObject -Namespace root/SecurityCenter2 -Class AntiVirusProduct
		ForEach ($antivirus in $Get_Antivirus)
			{
				$Antivirus_list = $Antivirus_list + $antivirus.displayname 	+ " "					
			}
			
		# Get defender antivirus options
		$Get_WinDefender = Get-MpComputerStatus	
		If((($Get_WinDefender.AntispywareEnabled) -ne $True) -and (($Get_WinDefender.AntivirusEnabled) -ne $True))
			{
				$antivirus_Status_Label.Content = "Antispyware and Antivirus disabled"
				$antivirus_Status_Label.Foreground = "yellow"	
				$antivirus_Status_Label.Fontweight = "bold"				
			}
		ElseIf((($Get_WinDefender.AntispywareEnabled) -eq $True) -and (($Get_WinDefender.AntivirusEnabled) -eq $True))
			{
				$antivirus_Status_Label.Content = "Antispyware and Antivirus enabled"
			}	
		Else
			{
				If(($Get_WinDefender.AntispywareEnabled) -ne $True)
					{
						$antivirus_Status_Label.Content = "Antispyware disabled"
						$antivirus_Status_Label.Foreground = "yellow"	
						$antivirus_Status_Label.Fontweight = "bold"					
					}
				ElseIf(($Get_WinDefender.AntivirusEnabled) -ne $True)
					{
						$antivirus_Status_Label.Content = "Antivirus disabled"
						$antivirus_Status_Label.Foreground = "yellow"	
						$antivirus_Status_Label.Fontweight = "bold"					
					}			
			}
			
		If((($Get_WinDefender.AntispywareSignatureAge) -gt "3") -and (($Get_WinDefender.AntivirusSignatureAge) -gt "3"))
			{
				$antivirus_Last_Update_Label.Content = "Antispyware and Antivirus not up to date"		
				$antivirus_Last_Update_Label.Foreground = "yellow"	
				$antivirus_Last_Update_Label.Fontweight = "bold"				
			}
		ElseIf((($Get_WinDefender.AntispywareSignatureAge) -lt 3) -and (($Get_WinDefender.AntivirusSignatureAge) -lt 3))
			{
				$antivirus_Last_Update_Label.Content = "Antispyware et Antivirus up to date"
				$antivirus_Last_Update_Label.Fontweight = "Normal"						
			}	
		Else
			{
				If(($Get_WinDefender.AntispywareEnabled) -ne $True)
					{
						$antivirus_Last_Update_Label.Content = "Antispyware not up to date"
						$antivirus_Last_Update_Label.Foreground = "yellow"	
						$antivirus_Last_Update_Label.Fontweight = "bold"				
					}
				ElseIf(($Get_WinDefender.AntivirusEnabled) -ne $True)
					{
						$antivirus_Last_Update_Label.Content = "Antivirus not up to date"
						$antivirus_Last_Update_Label.Foreground = "yellow"	
						$antivirus_Last_Update_Label.Fontweight = "bold"				
						
					}			
			}	
						
		$antivirus_Last_Scan_Block.Visibility = "Collapsed"	
		$Check_LastScan_Block.Visibility = "Collapsed"		
				
		If((($Get_WinDefender.FullScanAge) -gt "10") -and (($Get_WinDefender.QuickScanAge) -gt "10"))
			{
				$antivirus_Last_Scan_Label.Content = "Last antivirus check > 10 days"		
				$antivirus_Last_Scan_Label.Foreground = "yellow"	
				$antivirus_Last_Update_Label.Fontweight = "normal"	
				$antivirus_Last_Scan_Block.Visibility = "Visible"	
				$Check_LastScan_Block.Visibility = "Visible"	
			}
		ElseIf((($Get_WinDefender.FullScanAge) -lt 1) -or (($Get_WinDefender.QuickScanAge) -lt 1))
			{
				$antivirus_Last_Scan_Block.Visibility = "Collapsed"	
				$Check_LastScan_Block.Visibility = "Collapsed"		
			}	

			
		
		$My_IP.content = "$IP_Address" + " / " + "$IP_Subnet"
		$My_MAC.content = "$MAC_Address"
		$Domain_name.content = "$Domain_test"

		$Chart.Visibility = "Visible"
		$Bar.Visibility = "Collapsed"

		# $Get_MECM_Client_Version = (Get-WMIObject -Namespace root\ccm -Class SMS_Client  -ea silentlycontinue).ClientVersion

	# }
	

	# Get Graphic Cards info
	$Graphic_Card = (Get-CimInstance CIM_VideoController).caption	
	$Graphic_Card_info = (Get-CimInstance CIM_VideoController)
	If(($Graphic_Card_info.count) -gt 1)
		{
			ForEach ($Card in $Graphic_Card_info) ### Enum Disk 
				{
					$Graphic_Caption = $Card.Caption
					$Graphic_DriverVersion = $Card.DriverVersion
					$Graphic_Cards_with_DriverVersion = $Graphic_Cards + $Graphic_Caption + " ($Graphic_DriverVersion)" + "`n"					
					$Graphic_Cards = $Graphic_Cards + $Graphic_Caption + "`n"
				}		
		}
	Else
		{
			$Graphic_Caption = $Graphic_Card_info.Caption
			$Graphic_DriverVersion = $Graphic_Card_info.DriverVersion			
			$Graphic_Cards_with_DriverVersion = $Graphic_Cards + $Graphic_Caption + " ($Graphic_DriverVersion)" + "`n"
			$Graphic_Cards = $Graphic_Cards + $Graphic_Caption + "`n"			
		}
	$Graphic_Cards = $Graphic_Cards.trim()
	$Graphic_Cards_with_DriverVersion = $Graphic_Cards_with_DriverVersion.trim()	
	$Graphisme.Content = $Graphic_Cards
	$Graphic_Card_details.Content = $Graphic_Cards_with_DriverVersion

	# Get Graphic Wifi info
	$Wifi_Card_Info = (Get-NetAdapter -name wi-fi)
	If(($Wifi_Card_Info.count) -gt 1)
		{
			ForEach ($Card in $Wifi_Card_Info) ### Enum Disk 
				{
					$Wifi_Caption = $Card.InterfaceDescription
					$Wifi_Driver_Version = $Card.DriverVersion
					$Wifi_Cards = $Wifi_Cards + $Wifi_Caption + " ($Wifi_Driver_Version)" + "`n"
				}		
		}
	Else
		{
			$Wifi_Caption = $Wifi_Card_Info.InterfaceDescription
			$Wifi_Driver_Version = $Wifi_Card_Info.DriverVersion			
			$Wifi_Cards = $Wifi_Cards + $Wifi_Caption + " ($Wifi_Driver_Version)" + "`n"
			
		}
	$Wifi_Cards = $Wifi_Cards.trim()
	$Wifi_Card.Content = $Wifi_Cards	

	}
###########################################################################################################################################	
#******************************************************************************************************************************************
#														 INFORMATIONS FROM DETAILS PART							 
#******************************************************************************************************************************************
###########################################################################################################################################		
	
	
	
	
	
	
	
###########################################################################################################################################	
#******************************************************************************************************************************************
#														 INFORMATIONS FROM OVERVIEW	PART							 
#******************************************************************************************************************************************
###########################################################################################################################################	

Function Get_Overview_Infos
	{
		$User = $env:USERPROFILE
		$ProgData = $env:PROGRAMDATA
		$Win32_BIOS = Get-ciminstance Win32_BIOS 
		$Win32_OperatingSystem = Get-ciminstance Win32_OperatingSystem 
		$Manufacturer = $Win32_ComputerSystem.manufacturer	
		$MTM = $Win32_ComputerSystem.Model
		$Serial_Number = $Win32_BIOS.SerialNumber
		$Memory_RAM = [Math]::Round(($Win32_ComputerSystem.TotalPhysicalMemory/ 1GB),1) 
		$REG_OS_Version = get-itemproperty -path registry::"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -erroraction 'silentlycontinue'

		$OS_Ver = $Win32_OperatingSystem.version
		$Build_number = $Win32_OperatingSystem.buildnumber
		If ($OS_Ver -like "10*")
			{
				$OS_ReleaseID =  $REG_OS_Version.ReleaseID
				$OS_DisplayVersion =  $REG_OS_Version.DisplayVersion
				If($OS_DisplayVersion -ne $null)
					{
						$Release = $OS_DisplayVersion
					}
				Else	
					{
						$Release = $OS_ReleaseID
					}
			}
		Else
			{
				$Release = ""
			}
			
		If($Manufacturer -like "*lenovo*")
			{
				# $Computer_Model = ((Get-WmiObject -Class:Win32_ComputerSystem).Model).Substring(0,4)
				$Computer_Model = ($Win32_ComputerSystem.Model).Substring(0,4)		
			}
		Else
			{
				$Computer_Model = ($Win32_ComputerSystem.Model)	
			}
		$Device_Model.Content = "Computer model: $Computer_Model"				

		$Ma_Machine.Content = "Device name: " + $env:computername	
		$OS_Titre.Content = $Computer_Mode
		$OS_Version.Content =  "Windows 10 - $Release"
		$Mon_FARO.Content = "My user name: " + $env:username
		# $Graphisme.Content = "Graphic card: $Graphic_Card"
		# $Graphic_Card_details.Content = "$Graphic_Card"
		$Memory.Content = "Memory (RAM): $Memory_RAM GB"
		$Serial.Content = "Serial number: $Serial_Number"	
	}
	
###########################################################################################################################################	
#******************************************************************************************************************************************
#														 INFORMATIONS FROM OVERVIEW	PART							 
#******************************************************************************************************************************************
###########################################################################################################################################		
	
	
	
	
Launch_modal_progress	

$Win32_LogicalDisk = Get-ciminstance Win32_LogicalDisk | where {$_.DeviceID -eq "C:"}

Function Get_Disk_Infos
	{

		$Total_size = [Math]::Round(($Win32_LogicalDisk.size/1GB),1)
		$Free_size = [Math]::Round(($Win32_LogicalDisk.Freespace/1GB),1) 
		$Disk_information =  $Disk_information + "(" + $Win32_LogicalDisk.deviceid + ") " + $Total_size + " GB (Total size) / " +  + $Free_size + " GB (Free space) `n"
		$My_Disk_Info.Content = $Disk_information
			
		If($Free_size -lt 1)
			{
				$Disk_Warning.Content = "(Low disk space)"
				$Disk_Warning.Foreground = "yellow"
				$Disk_Warning.FontWeight = "bold"		
				
				$My_Disk_Info.Foreground = "yellow"
				$My_Disk_Info.FontWeight = "bold"			
			}
		Else
			{
				$Disk_Warning.Visibility = "Collapsed"
			}	
	}

# $Wifi_Card.Content = (Get-NetAdapter -name wi-fi).InterfaceDescription

$Get_MECM_Client_Version = (Get-WMIObject -Namespace root\ccm -Class SMS_Client  -ea silentlycontinue).ClientVersion
If($Get_MECM_Client_Version -eq $null)
	{
		$MECM_Client_Version_Block.Visibility = "Collapsed"
		$MECM_Client_Block.Visibility = "Collapsed"
		$MECM_Client_Version_Label.Content = "dd"				
	}
Else
	{
		$MECM_Client_Version_Block.Visibility = "Visible"
		$MECM_Client_Block.Visibility = "Visible"
		$MECM_Client_Version_Label.Content = $Get_MECM_Client_Version		
	}


$Get_Support_Infos_Content = [xml](get-content "$current_folder\Config\Main_Config.xml")
$Reboot_Days_Alert = $Get_Support_Infos_Content.Config.Reboot_Days_Alert

$Last_boot = Get-CimInstance -ClassName Win32_OperatingSystem | Select -Exp LastBootUpTime
$Current_Date = get-date
$Diff_boot_time = $Current_Date - $Last_boot
$Last_Reboot.Content = "Last reboot: $Last_boot"
If(($Diff_boot_time.Days) -gt $Reboot_Days_Alert)
# If(($Diff_boot_time.Days) -gt 1)
	{
		$Reboot_Alert_Block.Visibility = "Visible"	
		$IsRebootRequired.Content = "Last reboot > $Reboot_Days_Alert days, please reboot your device when possible"	
		$IsRebootRequired.FontWeight = "Bold"
		$IsRebootRequired.Foreground = "yellow"					
	}
Else
	{
		$Last_Reboot_Alert.Content = ""	
		$Reboot_Alert_Block.Visibility = "Collapsed"			
	}

Get_Overview_Infos
Get_Details_Infos
Get_Disk_Infos

# function Test-PendingReboot
# {
 # if (Get-ChildItem "HKLM:\Software\Microsoft\Windows\CurrentVersion\Component Based Servicing\RebootPending" -EA Ignore) { return $true }
 # if (Get-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update\RebootRequired" -EA Ignore) { return $true }
 # try { 
   # $util = [wmiclass]"\\.\root\ccm\clientsdk:CCM_ClientUtilities"
   # $status = $util.DetermineIfRebootPending()
   # if(($status -ne $null) -and $status.RebootPending){
     # return $true
   # }
 # }catch{}
 
 # return $false
# }



$Drivers_Test = Get-WmiObject Win32_PNPEntity | Where-Object {$_.ConfigManagerErrorCode -gt 0 }        
$Search_Missing_Drivers = ($Drivers_Test | Where-Object {$_.ConfigManagerErrorCode -eq 28}).Count
If ($Search_Missing_Drivers -gt 0)
	{
		$Missing_drivers.Content = "$Search_Missing_Drivers	- drivers are missing"
		$Missing_drivers.Foreground = "Red"			
	}



# $Win32_Printer = Get-WmiObject -Query " SELECT * FROM Win32_Printer WHERE Default=$true"
# $Printer.Content = $Win32_Printer.name




# If ((Test-PendingReboot) -eq $true)
	# {
		# $Pending_Reboot.Visibility = "Visible"
	# }
# Else
	# {
		# $Pending_Reboot.Visibility = "Collapsed"
	# }	
	
	

	
	
	
	
	
	
	
	
	
	
###########################################################################################################################################	
#******************************************************************************************************************************************
#														 CREATE MONITOR PART							 
#******************************************************************************************************************************************
###########################################################################################################################################	
	

# =================== StackPanel ======================================== 
Function Create-StackPanel{ 
 [CmdletBinding()]
    param(
        [Parameter(Position=0,Mandatory=$true)]
        [string] $StackPanelName,
        [Parameter(Position=1,Mandatory=$true)]
        [string] $StackPanelMarign,
        [Parameter(Position=2,Mandatory=$true)]
        [string] $StackPanelOrientation,
        [Parameter(Position=3)]
        [string] $StackPanelAlignment)

 
    $StackPanel = New-Object System.Windows.Controls.StackPanel
    $StackPanel.Name        = $StackPanelName 
    $StackPanel.Orientation = $StackPanelOrientation
    $StackPanel.Margin      = $StackPanelMarign
    $StackPanel.VerticalAlignment   = "Stretch"
    if($StackPanelMarign -eq "") {$StackPanel.HorizontalAlignment = "Center"}
    else{$StackPanel.HorizontalAlignment = $StackPanelAlignment} 

    return $StackPanel
}

# ======================== Label =======================================
Function Create-Label{ 
 [CmdletBinding()]
    param(
        [Parameter(Position=0,Mandatory=$true)]
        [string] $LabelName,
        [Parameter(Position=1,Mandatory=$true)]
        [string] $LabelMargin)
 
    $Label = New-Object System.Windows.Controls.Label
    $Label.Name        = $LabelName 
    $Label.Margin      = $LabelMargin
    $Label.FontSize="16"
    
    return $Label
}

# ======================== Image =======================================
Function Create-Image{ 
 [CmdletBinding()]
    param(
        [Parameter(Position=0,Mandatory=$true)]
        [string] $ImageName,
        [Parameter(Position=1,Mandatory=$true)]
        [string] $ImageSize,
        [Parameter(Position=2)]
        [string] $ImageMargin)
 
    $Image = New-Object System.Windows.Controls.Image
    $Image.Name        = $RadioButtonName
    if($ImageMargin -ne "") {$Image.Margin  = $ImageMargin }
    $Image.Width =$ImageSize.Split(",")[0]
    $Image.Height=$ImageSize.Split(",")[1]
    $Image.HorizontalAlignment="Center"
    $Image.VerticalAlignment="Top" 
    
    return $Image
}

# ======================== Border =======================================
Function Create-Border{ 
 [CmdletBinding()]
    param(
        [Parameter(Position=0,Mandatory=$true)]
        [string] $BorderName,
        [Parameter(Position=1,Mandatory=$true)]
        [string] $Margin,
        [Parameter(Position=2)]
        [string] $Background)
 
    $Border = New-Object System.Windows.Controls.Border
    $Border.Name           = $BorderName 
    if(($Background -ne "") -and ($Background -ne $null)){$Border.Background     = $Background}
    $Border.HorizontalAlignment = "Stretch"
    $Border.VerticalAlignment="Stretch"
    $Border.BorderBrush = "WhiteSmoke"
    $Border.CornerRadius    = 5
    $Border.BorderThickness = 1
    $Border.Margin     = $Margin 
    return $Border
}

	
	
	
Function Get_Monitor
	{
		$WMI1_WmiMonitorId = Get-CimInstance -Namespace root\wmi -ClassName WmiMonitorId 
		$Global:AllMonitors = ForEach($WMI1 in $WMI1_WmiMonitorId)
			{
				$WMI1_InstanceName = $WMI1.InstanceName
				$WMI1_FriendlyName = $WMI1.UserFriendlyName

				If ($WMI1_FriendlyName -gt 0) 
					{
						$name = ($WMI1.UserFriendlyName -notmatch '^0$' | foreach {[char]$_}) -join ""
					}
				Else 
					{
						$name = 'Internal screen'
					}				
									
				$WMI2_WmiMonitorListedSupportedSourceModes = Get-CimInstance -Namespace root\wmi -ClassName WmiMonitorListedSupportedSourceModes 
				ForEach($WMI2 in $WMI2_WmiMonitorListedSupportedSourceModes)
					{
						$WMI2_InstanceName = $WMI2.InstanceName
						If($WMI1_InstanceName -eq $WMI2_InstanceName)
							{
								$maxres = Get-CimInstance -Namespace root\wmi -ClassName WmiMonitorListedSupportedSourceModes | Select-Object -ExpandProperty MonitorSourceModes | Sort-Object -Property {$_.HorizontalActivePixels * $_.VerticalActivePixels} -Descending #| Select-Object -First 1												
							}				
					}			
					
				$WMI3_WmiMonitorBasicDisplayParams = Get-WmiObject -Namespace root\wmi -Class WmiMonitorBasicDisplayParams	
				ForEach($WMI3 in $WMI3_WmiMonitorBasicDisplayParams)
					{
						$WMI3_InstanceName = $WMI3.InstanceName
						If($WMI1_InstanceName -eq $WMI3_InstanceName)
							{
								$Monitor_Size = $WMI3 | select  @{N="Computer"; E={$_.__SERVER}},
								@{N="Size";
								E={[System.Math]::Round(([System.Math]::Sqrt([System.Math]::Pow($_.MaxHorizontalImageSize, 2) + [System.Math]::Pow($_.MaxVerticalImageSize, 2))/2.54),2)}}						
							}									
					}

				$Prop = @{
				'Name' = $name
				'Serial' = (($WMI1.SerialNumberID -notmatch '^0$' | foreach {[char]$_}) -join "")
				'Size' = $Monitor_Size.size
				}
				New-Object -Type PSObject -Property $Prop				

			}
	}	
	

# Function Get_Graphic_Cards_Info
	# {
		# $Get_Graphics_Infos = Get-WmiObject Win32_VideoController
		# $Graphic_Cards_Name = $Get_Graphics_Infos.Caption
		# $Graphic_Cards_Driver_Version = $Get_Graphics_Infos.DriverVersion		
		# $Graphic_Card.Content = $Graphic_Cards_Name + "($Graphic_Cards_Driver_Version)"
	# }		
	

function Create_Monitor_Content{

	Get_Monitor
	$StackPanelmain = Create-StackPanel "StackPanelAllDisk" "0,0,0,0" "Horizontal" "Center" 

    foreach ($Monitor in $AllMonitors ){             

         $StackPanelparent  = [String]("StackPparent"+$Monitor.Serial)
         $StackforPartition = [String]("StackForPart"+$Monitor.Serial)
         $Borderdisk        = [String]("BorderOf_"+$Monitor.Serial)
         $StackforPartition = Create-StackPanel  $StackforPartition "0,0,0,0" "Horizontal" "Center"
         $StackPanelparent  = Create-StackPanel  $StackPanelparent "0,0,0,0" "Vertical" "Center"  # inside the block
         $Borderdisk        = Create-Border      $Borderdisk  "10,30,0,0"
		 $Borderdisk.BorderThickness = "0"

         #======================= disk_n ==================================  
         $Titre_Label  	  = [String]("Monitor_"+$Monitor.Serial )
         $Monitor_Pic         = [String]("Monitor_"+$Monitor.Serial+"_ico" )
         $ChildSizeInfo   = [String]("Monitor_"+$Monitor.Serial+"_size" )
         $Carte_LabelInfo   = [String]("Monitor_"+$Monitor.Serial+"_size" )		
         $Serial_LabelInfo   = [String]("Monitor_"+$Monitor.Serial+"_size" )		 		 
         $StackPaneldisk  = [String]("Monitor_"+$Monitor.Serial+"_stackP" )
               
         $StackPaneldisk  = Create-StackPanel  $StackPaneldisk  "0,0,0,0" "Vertical" "Center"
         $DiskManagIco    = Create-Image       $Monitor_Pic "100,90" "5,5,0,0"
         $Titre_Label  = Create-Label       $Titre_Label  "5,0,0,0"    #Disk Id
         $Resolution_Label   = Create-Label       $ChildSizeInfo   "5,0,0,0"
         $Carte_Label   = Create-Label       $Carte_LabelInfo   "5,0,0,0"
         $Serial_Label   = Create-Label       $Serial_LabelInfo   "5,0,0,0"

         $DiskManagIco.Source    = "$Current_Folder\images\monitor.png" 
         $Titre_Label.Content = $Monitor.Name
		 $Titre_Label.FontWeight = "Bold"
		 $Titre_Label.FontSize = "20"

		 $Monitor_Size = $Monitor.size
		 $Monitor_Size = [math]::Round($Monitor_Size)
         $Resolution_Label.Content  = "Size: " + $Monitor_Size + " Inch"		 
		 $Resolution_Label.FontSize = "14"
         # $Carte_Label.Content  = $Graphic_Card
		 $Carte_Label.FontSize = "14"		 

         $Serial_Label.Content  = "Serial: " + $Monitor.serial 
		 $Serial_Label.FontSize = "14"			 
		 
         $StackPaneldisk.Children.Add($DiskManagIco)
         $StackPaneldisk.Children.Add($Titre_Label)
         $StackPaneldisk.Children.Add($Carte_Label)
         $StackPaneldisk.Children.Add($Serial_Label)		 
         $StackPaneldisk.Children.Add($Resolution_Label)
        
         $StackPanelparent.Width = 200
         $StackPanelparent.Height = 260
         $StackPanelparent.Children.Add($StackPaneldisk)

		If($my_theme -eq "BaseDark")
			{
				$Titre_Label.Foreground = "black"			
				$Carte_Label.Foreground = "black"			
				$Serial_Label.Foreground = "black"	
				$Resolution_Label.Foreground = "black"				
			}
		Else
 			{
				$Titre_Label.Foreground = "White"
				$Resolution_Label.Foreground = "White"
				$Carte_Label.Foreground = "White"
				$Serial_Label.Foreground = "White"					
			}
            
        $StackforPartition.Children.Add($StackPanelparent) 
        $Borderdisk.Child = $StackforPartition
        $StackPanelmain.Children.Add($Borderdisk)
    }  
    $MonitorList.Children.Add($StackPanelmain)      
}



###########################################################################################################################################	
#******************************************************************************************************************************************
#														 CREATE MONITOR PART							 
#******************************************************************************************************************************************
###########################################################################################################################################	
	
	
	
	
	
	

###########################################################################################################################################	
#******************************************************************************************************************************************
#														 CREATE STORAGE DISK PART							 
#******************************************************************************************************************************************
###########################################################################################################################################	
		

Function Check_Folder_Size
	{
		param(
		$Folder_Path
		)	
		
		If (test-path $Folder_Path)
			{
				Try
					{
						$Get_Folder_Size = (gci $Folder_Path -recurse -file -ea silentlycontinue -ErrorVariable err | measure-object -property length -sum).sum
					}
				Catch 
					{					
						"KO ==> Issue while checking size of $Folder" 							
						write-host ""
						write-host "################################################# ISSUE REPORTED #################################################" 								
						$_.Exception.ToString()
						write-host "################################################# ISSUE REPORTED #################################################" 								
						$Global:LastExitCode = 1
					}			

				If ($Get_Folder_Size -eq $null)
					{
						$folderSizeOutput = "0"
					}						
				ElseIf ( $Get_Folder_Size -lt 1KB ) 
					{ 
						$folderSizeOutput = "$("{0:N2}" -f $Get_Folder_Size) B" 
					}
				ElseIf ( $Get_Folder_Size -lt 1MB ) 
					{ 
						$folderSizeOutput = "$("{0:N2}" -f ($Get_Folder_Size / 1KB)) KB" 
					}
				ElseIf ( $Get_Folder_Size -lt 1GB ) 
					{ 
						$folderSizeOutput = "$("{0:N2}" -f ($Get_Folder_Size / 1MB)) MB" 
					}
				ElseIf ( $Get_Folder_Size -lt 1TB ) 
					{ 
						$folderSizeOutput = "$("{0:N2}" -f ($Get_Folder_Size / 1GB)) GB" 
					}
				ElseIf ( $Get_Folder_Size -lt 1PB ) 
					{ 
						$folderSizeOutput = "$("{0:N2}" -f ($Get_Folder_Size / 1TB)) TB" 
					}
				ElseIf ( $Get_Folder_Size -ge 1PB ) 
					{ 
						$folderSizeOutput = "$("{0:N2}" -f ($Get_Folder_Size / 1PB)) PB" 
					}	
								
				$Global:Full_Folder_Size = New-Object -TypeName psobject
				$Full_Folder_Size | Add-Member -MemberType NoteProperty -Name Size_Formated -Value $folderSizeOutput
				$Full_Folder_Size | Add-Member -MemberType NoteProperty -Name Size_Normal  -Value $Get_Folder_Size					
			}
		Else
			{
				write-host "Can not find the folder $Folder_Path" 									
			}		
		Return $Full_Folder_Size
	}

# $OneDrive_Commercial_Folder = $env:OneDriveCommercial	
			
# $User_Profile_Folder = $env:USERPROFILE

$Desktop_Path = (get-itemproperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders").Desktop
$Documents_Path = (get-itemproperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders").Personal
$Music_Path = (get-itemproperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders")."My Music"
$Download_Path = (get-itemproperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders")."{374DE290-123F-4565-9164-39C4925E467B}"

# $documents_Size = (Check_Folder_Size -Folder_Path "$User_Profile_Folder\Documents")
$documents_Size = (Check_Folder_Size -Folder_Path $Documents_Path)
$documents_Size_Normal = $documents_Size.Size_Normal
$documents_Size_Formated = $documents_Size.Size_Formated






# $download_size = (Check_Folder_Size -Folder_Path "$User_Profile_Folder\Downloads")
$download_size = (Check_Folder_Size -Folder_Path $Download_Path)
$download_size_Normal = $download_size.Size_Normal
$download_size_Formated = $download_size.Size_Formated

# $desktop_size = (Check_Folder_Size -Folder_Path "$User_Profile_Folder\Desktop")
$desktop_size = (Check_Folder_Size -Folder_Path $Desktop_Path)
$desktop_size_Normal = $desktop_size.Size_Normal
$desktop_size_Formated = $desktop_size.Size_Formated


# $music_size = (Check_Folder_Size -Folder_Path "$User_Profile_Folder\Music")
$music_size = (Check_Folder_Size -Folder_Path $Music_Path)
$music_size_Normal = $music_size.Size_Normal
$music_size_Formated = $music_size.Size_Formated

$Total_size = [Math]::Round(($Win32_LogicalDisk.size/1GB),1)
$Total_size_full = $Win32_LogicalDisk.size
$Free_Space = $Win32_LogicalDisk.FreeSpace

$Free_Space_Formated = "$("{0:N2}" -f ($Free_Space / 1GB)) GB" 

[int]$Doc_Used_Size = '{0:N0}' -f (($documents_Size_Normal / $Total_size_full * 100),1)		
[int]$download_Used_Size = '{0:N0}' -f (($download_size_Normal / $Total_size_full * 100),1)
[int]$desktop_Used_Size = '{0:N0}' -f (($desktop_size_Normal / $Total_size_full * 100),1)
[int]$Free_Space_Used_Size = '{0:N0}' -f (($Free_Space / $Total_size_full * 100),1)				
		
# 1043310224

$Main_bar_Value = $Doc_Used_Size + $Free_Space_Used_Size + $desktop_Used_Size + $download_Used_Size
$value_to_mulitply = 500 / $Main_bar_Value
		

$MyDocs.Width = $Doc_Used_Size * $value_to_mulitply
$Label_Docs = new-object system.windows.controls.label
$Label_Docs.Content = $Doc_Used_Size 	
$Label_Docs.Foreground = "white"	
$Label_Docs.HorizontalAlignment = "center"
$Label_Docs.VerticalAlignment = "center"		
$MyDocs.Children.Add($Label_Docs)
$MyDocs.Background = "#2195F2"

$Downloads.Width = $download_Used_Size * $value_to_mulitply
$Label_Download = new-object system.windows.controls.label
$Label_Download.Content = $download_Used_Size 	
$Label_Download.Foreground = "white"	
$Label_Download.HorizontalAlignment = "center"	
$Label_Download.VerticalAlignment = "center"		
$Downloads.Children.Add($Label_Download)
$Downloads.Background = "#607D8A"

$MyDesktop.Width = $desktop_Used_Size * $value_to_mulitply
$Label_Desktop = new-object system.windows.controls.label
$Label_Desktop.Content = $desktop_Used_Size 	
$Label_Desktop.Foreground = "white"	
$Label_Desktop.HorizontalAlignment = "center"
$Label_Desktop.VerticalAlignment = "center"			
$MyDesktop.Children.Add($Label_Desktop)
$MyDesktop.Background = "#F34336"

$Free.Width = $Free_Space_Used_Size * $value_to_mulitply
$Label_Free = new-object system.windows.controls.label
$Label_Free.Content = $Free_Space_Used_Size 	
$Label_Free.Foreground = "white"	
$Label_Free.HorizontalAlignment = "center"
$Label_Free.VerticalAlignment = "center"			
$Free.Children.Add($Label_Free)
$Free.Background = "#00BBD3"

	
$Legend_FreeSpace = "Free disk space ($Free_Space_Formated)"
	
If($Desktop_Path -like "*onedrive*")
	{
		# $Legend_MyDesktop = "Desktop ($desktop_size_Formated) (Redirected to OneDrive)"	
		$Legend_MyDesktop = "Desktop (OneDrive) ($desktop_size_Formated)"			
	}
ElseIf($Desktop_Path -like "*\\*")
	{
		$Legend_MyDesktop = "Desktop (DFS) ($desktop_size_Formated)"		
	}
Else	
	{
		$Legend_MyDesktop = "Desktop ($desktop_size_Formated)"		
	}
	
If($Documents_Path -like "*onedrive*")
	{
		$Legend_MyDocuments = "Documents (OneDrive) ($documents_Size_Formated)"			
	}
ElseIf($Documents_Path -like "*\\*")
	{
		$Legend_MyDocuments = "Documents (DFS) ($documents_Size_Formated)"		
	}
Else	
	{
		$Legend_MyDocuments = "Documents ($documents_Size_Formated)"		
	}
	
If($Download_Path -like "*onedrive*")
	{
		$Legend_Download = "Download (OneDrive) ($download_size_Formated)"			
	}
ElseIf($Download_Path -like "*\\*")
	{
		$Legend_Download = "Download (DFS) ($download_size_Formated)"		
	}
Else	
	{
		$Legend_Download = "Download ($download_size_Formated)"		
	}	
	
If($Music_Path -like "*onedrive*")
	{
		$Legend_MyMusic = "Music (OneDrive) ($music_size_Formated)"			
	}
ElseIf($Music_Path -like "*\\*")
	{
		$Legend_MyMusic = "Music (DFS) ($music_size_Formated)"		
	}
Else	
	{
		$Legend_MyMusic = "Music ($music_size_Formated)"		
	}		


$MyDocs.ToolTip = $Legend_MyDocuments
$Downloads.ToolTip = $Legend_Download
$MyDesktop.ToolTip = $Legend_MyDesktop
$Music.ToolTip = $Legend_MyMusic
$Free.ToolTip = $Legend_FreeSpace	
	

$Legend_Border_MyDesktop.Background = "#F34336"
$Legend_Label_MyDesktop.Content = $Legend_MyDesktop	

$Legend_Border_MyDocs.Background = "#2195F2"
$Legend_Label_MyDocs.Content = $Legend_MyDocuments

$Legend_Border_Downloads.Background = "#607D8A"
$Legend_Label_Downloads.Content = $Legend_Download

$Legend_Border_Music.Background = "#FEC007"
$Legend_Label_Music.Content = $Legend_MyMusic	

$Legend_Border_Free.Background = "#00BBD3"
$Legend_Label_Free.Content = $Legend_FreeSpace	



$List_Large_Files.Add_MouseLeftButtonDown({
	start-process -WindowStyle hidden powershell.exe "$current_folder\Actions_scripts\List_Large_Files.ps1" 	

})
		
###########################################################################################################################################	
#******************************************************************************************************************************************
#														 CREATE STORAGE DISK PART							 
#******************************************************************************************************************************************
###########################################################################################################################################			
		
		

		
		
		

Close_modal_progress

		
$refresh_monitor.Add_Click({
	$MonitorList.Children.Clear()     
	Get_Monitor
	Create_Monitor_Content	
})		
		
Function Show_Chart_Stockage
	{				
		$DoughnutCollection = [LiveCharts.SeriesCollection]::new()

		$chartvalue1 = [LiveCharts.ChartValues[LiveCharts.Defaults.ObservableValue]]::new()
		$pieSeries = [LiveCharts.Wpf.PieSeries]::new()

		If($Doc_Used_Size -gt 0)
			{
				$chartvalue1.Add([LiveCharts.Defaults.ObservableValue]::new($Doc_Used_Size))
			}
		$pieSeries.Values = $chartvalue1
		$pieSeries.Title = $Legend_MyDocuments
		$pieSeries.DataLabels = $true
		$DoughnutCollection.Add($pieSeries)


		$chartvalue2 = [LiveCharts.ChartValues[LiveCharts.Defaults.ObservableValue]]::new()
		$pieSeries = [LiveCharts.Wpf.PieSeries]::new()
		If($desktop_Used_Size -gt 0)
			{
				$chartvalue2.Add([LiveCharts.Defaults.ObservableValue]::new($desktop_Used_Size))
			}
		$pieSeries.Values = $chartvalue2
		$pieSeries.Title = $Legend_MyDesktop
		$pieSeries.DataLabels = $true
		$DoughnutCollection.Add($pieSeries)

		$chartvalue3 = [LiveCharts.ChartValues[LiveCharts.Defaults.ObservableValue]]::new()
		$pieSeries = [LiveCharts.Wpf.PieSeries]::new()
		If($music_Used_Size -gt 0)
			{
				$chartvalue3.Add([LiveCharts.Defaults.ObservableValue]::new($music_Used_Size))	
			}
		$pieSeries.Values = $chartvalue3
		$pieSeries.Title = $Legend_MyMusic
		$pieSeries.DataLabels = $true
		$DoughnutCollection.Add($pieSeries)


		$chartvalue4 = [LiveCharts.ChartValues[LiveCharts.Defaults.ObservableValue]]::new()
		$pieSeries = [LiveCharts.Wpf.PieSeries]::new()
		If($download_Used_Size -gt 0)
			{
				$chartvalue4.Add([LiveCharts.Defaults.ObservableValue]::new($download_Used_Size))
			}
		$pieSeries.Values = $chartvalue4
		$pieSeries.Title = $Legend_Download
		$pieSeries.DataLabels = $true
		$DoughnutCollection.Add($pieSeries)

		$chartvalue5 = [LiveCharts.ChartValues[LiveCharts.Defaults.ObservableValue]]::new()
		$pieSeries = [LiveCharts.Wpf.PieSeries]::new()
		If($Free_Space_Used_Size -gt 0)
			{
				$chartvalue5.Add([LiveCharts.Defaults.ObservableValue]::new($Free_Space_Used_Size))
			}
		$pieSeries.Values = $chartvalue5
		$pieSeries.Title = $Legend_FreeSpace
		$pieSeries.DataLabels = $true
		$DoughnutCollection.Add($pieSeries)

		$Doughnut.Series = $DoughnutCollection
	}
		



	
	
$refresh_monitor.Visibility = "Collapsed"

	

$Tab_Control.Add_SelectionChanged({	
	If (($Tab_Control.SelectedItem.Header -eq "Overview") -or ($Tab_Control.SelectedItem.Header -eq "Support")) 
		{	
			$refresh_monitor.Visibility = "Collapsed"
		}
	If ($Tab_Control.SelectedItem.Header -eq "Storage")
		{	
			Show_Chart_Stockage	
			$refresh_monitor.Visibility = "Collapsed"
		}
	ElseIf ($Tab_Control.SelectedItem.Header -eq "Monitors")
		{
			$refresh_monitor.Visibility = "Visible"		
			$MonitorList.Children.Clear()     
			Get_Monitor
			Create_Monitor_Content					
		}		
})






$Get_Support_Infos_Content = [xml](get-content "$current_folder\Config\Support.xml")
$Website_Link = $Get_Support_Infos_Content.Infos.Website_Link
$Chat_Link = $Get_Support_Infos_Content.Infos.Chat_Link
$Yammer_Link = $Get_Support_Infos_Content.Infos.Yammer_Link
$Phone_Number = $Get_Support_Infos_Content.Infos.Phone_Number
$Our_Mail = $Get_Support_Infos_Content.Infos.Mail
$Our_Phone.Content = $Phone_Number
	
$Get_Support_Infos_Content = [xml](get-content "$current_folder\Config\Main_Config.xml")
$Main_Color = $Get_Support_Infos_Content.Config.Main_Color
$Overview_Logo = $Get_Support_Infos_Content.Config.Overview_Logo
$Main_Language = $Get_Support_Infos_Content.Config.Main_Language
$Display_Send_Logs = $Get_Support_Infos_Content.Config.Display_Send_Logs

$Tool_Logo.Source = "$current_folder\images\$Overview_Logo"

$Theme = [MahApps.Metro.ThemeManager]::DetectAppStyle($form)	
[MahApps.Metro.ThemeManager]::ChangeAppStyle($form, [MahApps.Metro.ThemeManager]::GetAccent("$Main_Color"), $Theme.Item1);	

$Website.Add_PreviewMouseDown({
	[system.Diagnostics.Process]::start("$Website")
})

$Chat.Add_PreviewMouseDown({
	[system.Diagnostics.Process]::start("$Chat_Link")
})

$Mail.Add_PreviewMouseDown({
	$Our_Mail = "damien.vanrobaeys@gmail.com"
	$Computer_Name = $env:computername
	$User_Name = $env:username
	$Mail_Object = "Issue from user $User_Name on device $Computer_Name"
	Start-Process "mailto:dhub01@domain.tld?Subject=$Mail_Object&Cc=dhub02@domain.tld&Body=$Mail_Object"
})

$Yammer.Add_PreviewMouseDown({
	[system.Diagnostics.Process]::start("$Yammer_Link")
})

$Send_Logs.Add_PreviewMouseDown({
	[system.Diagnostics.Process]::start("https://www.systanddeploy.com")
})

If($Website_Link -ne "")
	{
		$Website_Block.Visibility = "Visible"
	}
Else
	{
		$Website_Block.Visibility = "Collapsed"	
	}

If($Yammer_Link -ne "")
	{
		$Yammer_Block.Visibility = "Visible"
	}
Else
	{
		$Yammer_Block.Visibility = "Collapsed"	
	}
	
If($Chat_Link -ne "")
	{
		$Chat_Block.Visibility = "Visible"
	}
Else
	{
		$Chat_Block.Visibility = "Collapsed"	
	}	
	
If(($Chat_Link -eq "") -and ($Yammer_Link -eq ""))
	{	
		$Issue_Block.Margin = "20,50,0,0"	
	}
Else
	{	
		$Issue_Block.Margin = "20,10,0,0"	
	}
	
If(($Chat_Link -eq "") -and ($Yammer_Link -eq "") -and ($Website_Link -eq ""))
	{	
		$Issue_Block.Margin = "20,80,0,0"	
	}
Else
	{	
		$Issue_Block.Margin = "20,10,0,0"	
	}	


$Form.ShowDialog() | Out-Null

