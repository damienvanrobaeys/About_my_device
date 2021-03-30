$Get_Large_Files = gci c:\ -recurse  -ea silentlycontinue | sort -descending -property length | select -first 10 name, length, fullname
$Get_Large_Files | out-file "$env:temp\Large_Files.txt"
invoke-item "$env:temp\Large_Files.txt"