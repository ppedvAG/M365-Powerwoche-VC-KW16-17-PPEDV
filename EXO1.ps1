Get-ExecutionPolicy
Set-ExecutionPolicy RemoteSigned
#Shell-Verbindung ExchangeOnline
$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection

Install-Module ExchangeOnlineManagement -Verbose -Scope AllUsers -Force

Connect-ExchangeOnline
get-command *mail*
Get-EXOMailbox | ft displayname,emailaddresses
Get-EXOMailbox | Get-EXOMailboxStatistics | sort totalitemsize -Descending | ft displayname,itemcount,totalitemsize 