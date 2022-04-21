$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection

get-command *mail*

Add-MailboxFolderPermission -Identity konferenzraum1:\calendar -User admin@M365x79306701.onmicrosoft.com -AccessRights owner
get-help Add-MailboxFolderPermission -Detailed

Add-MailboxPermission -Identity AllanD@M365x79306701.OnMicrosoft.com -User admin@M365x79306701.onmicrosoft.com -AccessRights fullaccess -AutoMapping:$false
Get-MailboxFolderPermission -Identity konferenzraum1:\calendar
Remove-MailboxFolderPermission -Identity konferenzraum1:\calendar -User admin@M365x79306701.onmicrosoft.com