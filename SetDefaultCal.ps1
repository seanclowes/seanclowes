foreach($user in Get-Mailbox -RecipientTypeDetails UserMailbox) {
$cal = $user.alias+":\Calendar" 
Write-Host "Setting permissions on $user"
Set-MailboxFolderPermission -Identity $cal -User Default -AccessRights Reviewer
 }