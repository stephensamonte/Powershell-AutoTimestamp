### This listens to a folder and logs changes in a log file 

### Select which folders to listen to
    $watcher = New-Object System.IO.FileSystemWatcher
    $watcher.Path = "C:\Users\steph\Desktop"
    $watcher.Filter = "*.*"
    $watcher.IncludeSubdirectories = $true
    $watcher.EnableRaisingEvents = $true  

### If an event occurs then define an action to take. 
    $action = { 
                # gets the full path of the event that has occured 
                $path = $Event.SourceEventArgs.FullPath

                # gets the action that triggered the listener 
                $changeType = $Event.SourceEventArgs.ChangeType

                # creates a variable that is the date, the change type, and the path
                $logline = "$(Get-Date), $changeType, $path"

                # adds the logline into the log.txt document 
                Add-content "C:\Users\steph\Desktop\log.txt" -value $logline




                # date to append to file name 
                $appendDate = "$(Get-Date -UFormat "%Y.%m.%d%Z")"

                # the path to a document 
                $outputPath = "$path"

                ## Original
                # $outputPath = "C:\Users\steph\Desktop\testing.txt"

                # returns the file name with an extention
                $outputFile = Split-Path "$outputPath" -leaf

                # renames the changed item 
                rename-item "$path" -newname "$appendDate $outputFile"
                
                ## original rename a file 
                # rename-item C:\Users\steph\Desktop\testing -newname testing.txt
                
              }    
### Determine which events to watch
    Register-ObjectEvent $watcher "Created" -Action $action
    Register-ObjectEvent $watcher "Changed" -Action $action
    Register-ObjectEvent $watcher "Deleted" -Action $action
    Register-ObjectEvent $watcher "Renamed" -Action $action
    while ($true) {sleep 5}