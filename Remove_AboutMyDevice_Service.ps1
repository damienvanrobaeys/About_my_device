$ProgData = $env:PROGRAMDATA
$Current_Folder = split-path $MyInvocation.MyCommand.Path
$AboutMyDevice_Folder = $env:programdata + "\SD_AboutMyDevice"
$SystemRoot = $env:SystemRoot
$Debug_Folder = "$SystemRoot\Debug"
$Log_File = "$Debug_Folder\GRT_AboutMyDevice.log"
$ServiceName = "About my device"

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

$OD_Process_Status = (gwmi win32_process | Where {$_.commandline -like "*AboutMydevice_Systray*"})				
$OD_Process_Status2 = get-process | where {$_.MainWindowTitle -like "*About my device*"}				
If($OD_Process_Status -ne $null)
	{
		$OD_Process_Status.Terminate()
	}

If($OD_Process_Status2 -ne $null)
	{
		$OD_Process_Status2 | kill -Force					
	}	

$Script:Local_Path_NSSM = "$AboutMyDevice_Folder\nssm.exe"	
$Local_Path_NSSM = "$AboutMyDevice_Folder\nssm.exe"
Get-Service $ServiceName | stop-service
& $Local_Path_NSSM remove $ServiceName confirm	
If(test-path $AboutMyDevice_Folder){Remove-item $AboutMyDevice_Folder -Recurse -Force}
