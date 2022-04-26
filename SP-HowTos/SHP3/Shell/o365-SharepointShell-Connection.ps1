Get-Module -Name Microsoft.Online.SharePoint.PowerShell -ListAvailable | Select Name,Version

Install-Module -Name Microsoft.Online.SharePoint.PowerShell

##LoginName und o365-orgName eintragen!

$adminUPN="LoginName"
$orgName="OrgName"
$userCredential = Get-Credential -UserName $adminUPN -Message "Type the password."
Connect-SPOService -Url https://$orgName-admin.sharepoint.com -Credential $userCredential

###Nur bei MFA

$orgName="<name of your Office 365 organization, example: contosotoycompany>"
Connect-SPOService -Url https://$orgName-admin.sharepoint.com