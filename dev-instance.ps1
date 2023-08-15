<Powershell>
Set-ExecutionPolicy Unrestricted -Force
$Password = ConvertTo-SecureString -String "lab-password@123" -AsPlainText -Force
$UserAccount = Get-LocalUser -Name "administrator"
$UserAccount | Set-LocalUser -Password $Password
Rename-Computer -NewName "DevJVInstance"
Restart-Computer
</Powershell>
