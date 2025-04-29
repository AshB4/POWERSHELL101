function Remove-TempStorage {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string] $folder
    )
    
    # Assign a default value if the parameter is not provided
    if (-not $PSBoundParameters.ContainsKey('folder')) {
        $folder = "C:\Users\ash\Desktop\POWERSHELL101\PS101"
    }
    
    Get-ChildItem -Path $folder -Recurse |
    Where-Object { $_.Name -ne "_yourFilesName.txt" } | 
    Remove-Item -Force -Recurse
}

# # To run this function:
# # Save this script to a .ps1 file, for example, `remove_temp_storage.ps1`
# # Open PowerShell or PowerShell Core (pwsh)
# # Navigate to the directory containing the script
# # Run the script to define the function in your session
# # Call the function with the necessary parameter
# ```

# ### Explanation
# - **Parameter Definition**: The `$folder` parameter is defined as mandatory.
# - **Default Value Assignment**: Inside the function, a default value is assigned to `$folder` if it is not provided when the function is called.
# - **File Operations**: The script then proceeds to list all items in the specified folder, excluding `_yourFilesName.txt`, and removes them.

# ### Running the Script

# 1. **Save the Script**: Save the above code as `remove_temp_storage.ps1`.

# 2. **Open PowerShell**: Open PowerShell or PowerShell Core (pwsh).

# 3. **Navigate to the Script Directory**:
#    ```powershell
#    cd /Users/ash/Desktop/POWERSHELL101
#    ```

# 4. **Run the Script to Load the Function**:
#    ```powershell
#    .\remove_temp_storage.ps1
#    ```

# 5. **Call the Function** with or without specifying the folder parameter:
#    - With a specified folder:
#      ```powershell
#      Remove-TempStorage -folder "C:\Users\ash\Desktop\POWERSHELL101\PS101"
#      ```
#    - Without specifying the folder (using the default):
#      ```powershell
#      Remove-TempStorage
#      ```

# This way, you can use the `Remove-TempStorage` function with or without specifying the `folder` parameter, and it will work correctly in both cases.