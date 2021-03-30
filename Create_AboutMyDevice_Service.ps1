$ProgData = $env:PROGRAMDATA
$Current_Folder = split-path $MyInvocation.MyCommand.Path
$GRT_AboutMyDevice_Folder = $env:programdata + "\GRT_AboutMyDevice"
$SystemRoot = $env:SystemRoot
$Debug_Folder = "$SystemRoot\Debug"
$Log_File = "$Debug_Folder\GRT_AboutMyDevice.log"
$ServiceName = "About my device"
$Service_Description = "A systray tool allowing user to display information about his device, and run some actions"

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
									
Add-content $Log_File ""	
If(test-path $GRT_AboutMyDevice_Folder){Remove-item $GRT_AboutMyDevice_Folder -Recurse -Force}

Try
	{
		New-item $GRT_AboutMyDevice_Folder -Force -Type directory
		If(!(test-path $Log_File)){new-item $Log_File -type file -force}		
		Write_Log -Message_Type "SUCCESS" -Message "Creating folder: $GRT_AboutMyDevice_Folder"		
		$Create_Folder_Status = $True
	}
Catch
	{
		Write_Log -Message_Type "ERROR" -Message "n error occured while creating folder: $GRT_AboutMyDevice_Folder"	
		$Create_Folder_Status = $False		
	}
	
Add-content $Log_File ""					
If($Create_Folder_Status -eq $True)
	{
		Try
			{
				copy-item "$Current_Folder\Sources\*" $GRT_AboutMyDevice_Folder -Recurse -Force	
				$Script:Local_Path_NSSM = "$GRT_AboutMyDevice_Folder\nssm.exe"				
				Write_Log -Message_Type "SUCCESS" -Message "Sources files have been copied in: $GRT_AboutMyDevice_Folder"		
				$Files_Copy_Status = $True				
			}
		Catch
			{
				Write_Log -Message_Type "ERROR" -Message "An error occured while copying files in: $GRT_AboutMyDevice_Folder"		
				$Files_Copy_Status = $False								
			}
	}
	
Add-content $Log_File ""				
If($Files_Copy_Status -eq $True)
	{
		$PathPowerShell = (Get-Command Powershell).Source
		$PS1_To_Run = "$GRT_AboutMyDevice_Folder\AboutMyDevice_Service.ps1"
		$ServiceArguments = '-ExecutionPolicy Bypass -NoProfile -File "{0}"' -f $PS1_To_Run
		Try
			{
				& $Local_Path_NSSM install $ServiceName $PathPowerShell $ServiceArguments
				sleep 5
				Write_Log -Message_Type "SUCCESS" -Message "The service $ServiceName has been successfully created"	
				$Create_Service_Status = $True								
			}
		Catch
			{
				Write_Log -Message_Type "ERROR" -Message "An issue occured while creating the service: $ServiceName"	
				$Create_Service_Status = $False												
			}	
	}	
	
Add-content $Log_File ""				
If($Create_Service_Status -eq $True)
	{
		$PathPowerShell = (Get-Command Powershell).Source
		Try
			{
				& $Local_Path_NSSM start $ServiceName
				& $Local_Path_NSSM set $ServiceName description $Service_Description				
				Write_Log -Message_Type "SUCCESS" -Message "Starting service $ServiceName"							
			}
		Catch
			{
				Write_Log -Message_Type "ERROR" -Message "An issue occured while starting service $ServiceName"																		
			}	
	}	
