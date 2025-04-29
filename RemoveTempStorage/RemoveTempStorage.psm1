#you have to have a ps1 1st then you load it into psm1 file 
#folder must be the same name

# In terminal cd in to file and type
ps:import-module ./RemoveTempStorage/RemoveTempStorage.psm1

# this is now a function inside a module or a memory
ps: Remove-TempStoragefile -folder C:\path\to\your\file

#cd in to file ...thisone is remove temp storage
ps: cd .\removetempstorage> New-ModuleManifest -path ./RemoveTempStorage


