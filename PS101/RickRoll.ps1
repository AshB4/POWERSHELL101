param(
    [Parameter(Mandatory = $true)]
    [ValidateSet("create", "remove")]
    [string]$action
)

function CreateRickrollTask {
    # Define the time window
    $startHour = 9
    $endHour = 17

    # Calculate a random time within the window
    $randomHour = Get-Random -Minimum $startHour -Maximum $endHour
    $randomMinute = Get-Random -Minimum 0 -Maximum 59
    $randomSecond = Get-Random -Minimum 0 -Maximum 59

    # Set the date and random time for the task
    $runTime = (Get-Date).Date.AddHours($randomHour).AddMinutes($randomMinute).AddSeconds($randomSecond)

    # Task name
    $taskName = "Rickroll"

    # Create the scheduled task action
    $action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "C:\path\to\rickroll.ps1"

    # Create the trigger to run once at the random time
    $trigger = New-ScheduledTaskTrigger -Once -At $runTime

    # Register the scheduled task
    Register-ScheduledTask -Action $action -Trigger $trigger -TaskName $taskName -Description "Rickroll my friend at a random time between 9 AM and 5 PM"

    Write-Output "Scheduled task created to run at $runTime"
}

function Remove-RickrollTask {
    # Task name
    $taskName = "Rickroll"

    # Unregister the scheduled task
    Unregister-ScheduledTask -TaskName $taskName -Confirm:$false

    Write-Output "Scheduled task '$taskName' has been removed."
}

if ($action -eq "create") {
    Create-RickrollTask
}
elseif ($action -eq "remove") {
    Remove-RickrollTask
}
else {
    Write-Output "Invalid action. Use 'create' or 'remove'."
}
