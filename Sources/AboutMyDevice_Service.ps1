# sleep 30

$ProgData = $env:PROGRAMDATA
$Current_Folder = split-path $MyInvocation.MyCommand.Path
$GRT_AboutMyDevice_Folder = $env:programdata + "\GRT_AboutMyDevice"
$SystemRoot = $env:SystemRoot
$Debug_Folder = "$SystemRoot\Debug"
$Log_File = "$GRT_AboutMyDevice_Folder\GRT_AboutMyDevice.log"
$ServiceName = "GRTgaz About my device"

Function Write_Log
	{
		param(
		$Message_Type,	
		$Message
		)
		
		$MyDate = "[{0:MM/dd/yy} {0:HH:mm:ss}]" -f (Get-Date)		
		Add-Content $Log_File  "$MyDate - $Message_Type : $Message"			
		write-host  "$MyDate - $Message_Type : $Message"		
	}
		
If(!(test-path $Log_File)){new-item $Log_File -type file -force}		
	
while($true)
{	
	Add-Content $Log_File ""			
	
	Try
		{
			import-module "$GRT_AboutMyDevice_Folder\RunasUser"
			Write_Log -Message_Type "SUCCESS" -Message "Importation du module RunasUser avec succès"
			$RunasUser_Module_imported = $True
		}
	Catch
		{
			Write_Log -Message_Type "ERROR" -Message "Erreur ^pendant l'importation du module RunasUser"				
			$RunasUser_Module_imported = $False
		}
		
	If($RunasUser_Module_imported -eq $True)
		{
			$scriptblock = {
			powershell -ExecutionPolicy Bypass -NoProfile "C:\ProgramData\GRT_AboutMyDevice\AboutMyDevice_Systray.ps1"												
			}			
			Try
				{	
					Write_Log -Message_Type "INFO" -Message "Exécution du script de comparaison en cours"						
					Invoke-AsCurrentUser -ScriptBlock $scriptblock
					Write_Log -Message_Type "SUCCESS" -Message "Exécution du script de comparaison"
				}
			Catch
				{
					Write_Log -Message_Type "ERROR" -Message "Erreur pendant l'exécution du script de comparaison"											
				}					
		}
	
	# powershell -ExecutionPolicy Bypass -NoProfile "$GRT_AboutMyDevice_Folder\AboutMyDevice_Systray.ps1"												
	Write_Log -Message_Type "INFO" -Message "The process of checking the $GRT_AboutMyDevice_Folder program will be paused for 3 hours"		
	Add-content $Log_File ""	
	write-host ""
	# Start-Sleep -Seconds 180	
	Start-Sleep -Seconds 10		
}

