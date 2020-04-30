$From = "vincboys@gmail.com"
$To = "chris@saenz.ca"
$Subject = "Test Message"
$Body = "
Hello $From
THis is an email
from me?
-goodbye

"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"

Send-MailMessage -From $From -to $To -Subject $Subject -Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential (Get-Credential)